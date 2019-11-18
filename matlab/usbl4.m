classdef usbl4
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties (SetAccess = 'immutable')
        params
        h1
        h2
        h3
        h4
        H
    end
    
    methods
        function obj = usbl4(positions, params)
            assert(all(size(positions) == [4,3]), "positions must be 4x3");
            obj.h1 = positions(1,:);
            obj.h2 = positions(2,:);
            obj.h3 = positions(3,:);
            obj.h4 = positions(4,:);
            
            obj.H = [obj.h2-obj.h1;
                     obj.h3-obj.h1;
                     obj.h4-obj.h1];
                 
            assert(abs(det(obj.H)) > 1e-5, "hydrophones must be non-coplanar!");
            assert(isfield(params, 'sampleRate'), 'sampleRate field [samples/second] missing!');
            assert(isfield(params, 'speedOfSound'), 'speedOfSound field [meters/second] missing!');
            assert(isfield(params, 'blockLen'), 'blockLen field [samples] missing!');
            obj.params = params;
        end
        
        function bearing = bearing(usbl4, toas)
            % Assumes times of arrival are relative to hydrophone h0
            assert(all(size(toas) == [3,1]), "TOAs must be a 3x1 col vector")
            
            d = toas * usbl4.params.speedOfSound;
            bearing = usbl4.H\d; % inv(usbl4.H) * d
            bearing = bearing/norm(bearing);
        end
        
        function toas = toas(usbl4, signals, passBand)
            toas = zeros(3,1);
            %assert(all(size(signals) == [4,usbl4.params.blockLen]), "signals must be 4xblockLen");
            oldPts = linspace(0, size(signals,2), size(signals,2));
            interpFactor = 10;
            newPts = linspace(0, size(signals,2), size(signals,2) * interpFactor);
            
            figure;
            t = linspace(0,size(signals,2)/usbl4.params.sampleRate,size(signals,2));
            subplot(4,1,1);
            plot(t,signals(1,:));
            subplot(4,1,2);
            plot(t,signals(2,:));
            subplot(4,1,3);
            plot(t,signals(3,:));
            subplot(4,1,4);
            plot(t,signals(4,:));
            suptitle('Input signals');
            
            s1 = bandpass(signals(1,:), passBand, usbl4.params.sampleRate, 'Steepness', 0.95);
            s2 = bandpass(signals(2,:), passBand, usbl4.params.sampleRate, 'Steepness', 0.95);
            s3 = bandpass(signals(3,:), passBand, usbl4.params.sampleRate, 'Steepness', 0.95);
            s4 = bandpass(signals(4,:), passBand, usbl4.params.sampleRate, 'Steepness', 0.95);
            
            figure;
            t = linspace(0,size(s1,2)/(usbl4.params.sampleRate),size(s1,2));
            subplot(4,1,1);
            plot(t,s1);
            subplot(4,1,2);
            plot(t,s2);
            subplot(4,1,3);
            plot(t,s3);
            subplot(4,1,4);
            plot(t,s4);
            suptitle('Bandpass Filtered Signals');
            
            
            s1 = interp1(oldPts, s1, newPts, 'spline');
            s2 = interp1(oldPts, s2, newPts, 'spline');
            s3 = interp1(oldPts, s3, newPts, 'spline');
            s4 = interp1(oldPts, s4, newPts, 'spline');
            
            figure;
            t = linspace(0,size(s1,2)/(usbl4.params.sampleRate*interpFactor),size(s1,2));
            subplot(4,1,1);
            plot(t,s1);
            subplot(4,1,2);
            plot(t,s2);
            subplot(4,1,3);
            plot(t,s3);
            subplot(4,1,4);
            plot(t,s4);
            suptitle('Interpolated Signals');
            
            threshold = 1;
            preCrop = 800*1e-6*usbl4.params.sampleRate;
            postCrop = 1500*1e-6*usbl4.params.sampleRate;
            
            p1 = find(s1 > threshold,1);
            p2 = find(s2 > threshold,1);
            p3 = find(s3 > threshold,1);
            p4 = find(s4 > threshold,1);
            
            s1(1:p1-preCrop) = 0;
            s2(1:p2-preCrop) = 0;
            s3(1:p3-preCrop) = 0;
            s4(1:p4-preCrop) = 0;
            
            s1(p1+postCrop:end) = 0;
            s2(p2+postCrop:end) = 0;
            s3(p3+postCrop:end) = 0;
            s4(p4+postCrop:end) = 0;
            
            figure;
            t = linspace(0,size(s1,2)/(usbl4.params.sampleRate*interpFactor),size(s1,2));
            subplot(4,1,1);
            plot(t,s1);
            subplot(4,1,2);
            plot(t,s2);
            subplot(4,1,3);
            plot(t,s3);
            subplot(4,1,4);
            plot(t,s4);
            suptitle('Cropped Signals');
            
            
            c1 = xcorr(s2,s1);
            c2 = xcorr(s3,s1);
            c3 = xcorr(s4,s1);
            [~, corr1] = max(c1);
            [~, corr2] = max(c2);
            [~, corr3] = max(c3);
            
            figure;
            t = linspace(0,size(c1,2)/(usbl4.params.sampleRate*interpFactor),size(c1,2)) ...
                - size(c1,2)/(usbl4.params.sampleRate*interpFactor*2);
            subplot(3,1,1);
            plot(t,c1);
            subplot(3,1,2);
            plot(t,c2);
            subplot(3,1,3);
            plot(t,c3);
            suptitle('Correlations against h1');
            
            toas(1) = (size(s1,2) - corr1)/(usbl4.params.sampleRate*interpFactor);
            toas(2) = (size(s1,2) - corr2)/(usbl4.params.sampleRate*interpFactor);
            toas(3) = (size(s1,2) - corr3)/(usbl4.params.sampleRate*interpFactor);
        end
    end
end

