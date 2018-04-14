classdef DosDim < Figura
    
    properties
     espesor
    end
    
    methods
         function obj = DosDim(X0, Y0, Z0, X1, Y1, Z1,Xfin,Yfin,Zfin,color)
            
            obj.px = [X0 Xfin X1 (X1+Xfin)];
            obj.py = [Y0 Yfin Y1 (Y1+Yfin)];
            obj.pz = [Z0 Zfin Z1 (Z1+Zfin)];
            
            Dibujar(obj,color);
            grid on
            %UNTITLED Construct an instance of this class
            %   Detailed explanation goes here
           
         end
        
        function Dibujar(myobj, col)
            
            % w = 0, wire frame; w = 1, rectangles are colored
            x = myobj.px;
            y = myobj.py;
            z = myobj.pz;
           % index = zeros(1,3);
            index(1,:) = [1 2 4 3];
           
            %c = 'rgbcmy';
            
                
                fill3(x(index(1,:)), y(index(1,:)), z(index(1,:)), col)
                
                hold on
           
        end
    end
    
end

