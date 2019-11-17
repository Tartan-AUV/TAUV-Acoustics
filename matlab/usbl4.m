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
        end
        
        function toas = toas(usbl4, signals)
            assert(size(signals) == [4,usbl4.blockLen], "signals must be 4xblockLen");
        end
    end
end

