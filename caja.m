classdef caja<handle
    %UNTITLED Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    px
    py
    pz
    c
    name
    end
    
    methods
        function obj = caja(xo, yo, zo, Lx, Ly, Lz,color)
            obj.px = [xo xo xo xo xo+Lx xo+Lx xo+Lx xo+Lx];
            obj.py = [yo yo yo+Ly yo+Ly yo yo yo+Ly yo+Ly];
            obj.pz = [zo zo+Lz zo+Lz zo zo zo+Lz zo+Lz zo ];
            pintar(obj,color);
            %UNTITLED Construct an instance of this class
            %   Detailed explanation goes here
           
        end
        
        function outputArg = method1(obj,inputArg)
            %METHOD1 Summary of this method goes here
            %   Detailed explanation goes here
            outputArg = obj.Property1 + inputArg;
        end
        
        
        function trasladar(tx,ty,tz,obj)
            for i=1:length(obj.px)
                obj.px(i)=obj.px(i)+tx;
                obj.py(i)=obj.py(i)+ty;
                obj.pz(i)=obj.pz(i)+tz;
            end
        end
        
        function pintar(myobj, col)
            % w = 0, wire frame; w = 1, rectangles are colored
            x = myobj.px;
            y = myobj.py;
            z = myobj.pz;
            index = zeros(6,5);
            index(1,:) = [1 2 3 4 1];
            index(2,:) = [5 6 7 8 5];
            index(3,:) = [1 2 6 5 1];
            index(4,:) = [4 3 7 8 4];
            index(5,:) = [2 6 7 3 2];
            index(6,:) = [1 5 8 4 1];
            %c = 'rgbcmy';
            for k = 1:6
                
                fill3(x(index(k,:)), y(index(k,:)), z(index(k,:)), col)
                
                hold on
            end
        end
    end
end

