classdef usblSim
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (SetAccess = 'immutable')
        usbl
        pingPos
        delays
        pingRampTime
    end
    
    methods
        function obj = usblSim(usbl, pingPos, pingRampTime)
            obj.usbl = usbl;
            obj.pingPos = pingPos;
            
            % Calculate pinger delays based on distance.
            % Note that the test signal is *not* farfield! This simulates
            % real life.
            d1 = norm(usbl.h1 - pingPos');
            d2 = norm(usbl.h2 - pingPos');
            d3 = norm(usbl.h3 - pingPos');
            d4 = norm(usbl.h4 - pingPos');
            
            obj.delays = [d1/usbl.params.speedOfSound;
                          d2/usbl.params.speedOfSound;
                          d3/usbl.params.speedOfSound;
                          d4/usbl.params.speedOfSound];
                      
            obj.pingRampTime = pingRampTime;
        end
        
        function signals = delaySignals(sim, fun, duration)
            t = linspace(0,duration, sim.usbl.params.sampleRate * duration);
            signals(1,:) = fun(t - sim.delays(1) * ones(size(t)));
            signals(2,:) = fun(t - sim.delays(2) * ones(size(t)));
            signals(3,:) = fun(t - sim.delays(3) * ones(size(t)));
            signals(4,:) = fun(t - sim.delays(4) * ones(size(t)));
        end
        
        function pingSigs = delayPinger(sim, freq, duration)
            
            function y = ping(sim,freq,t)                
                y = sin(freq*2*pi*t);
                y = y .* min(t/sim.pingRampTime,1);
                y = y .* double(t > 0);
            end
            
            pingSigs = delaySignals(sim, @(t)ping(sim,freq,t), duration);
            
        end
        
        function plotSigs = plotSigs(sim, freq, duration)
            sigs = delayPinger(sim, freq, duration);
            t = linspace(0,duration, sim.usbl.params.sampleRate * duration);
            plot(t,sigs(1,:));
            hold on
            plot(t,sigs(2,:));
            plot(t,sigs(3,:));
            plot(t,sigs(4,:));
            xlabel('time (s)')
            ylabel('amplitude')
        end
    end
end

