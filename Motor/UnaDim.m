classdef UnaDim < Figura
    
    properties
        Ancho
        Alto
        Largo
    end
    
    methods
        function obj = UnaDim(x0,y0,z0,x1,y1,z1,radio,color)
            r=radio;
            [obj.px,obj.py,obj.pz] = cylinder(r);
            obj.px(1,:)=obj.px(1,:)+x0;
            obj.py(1,:)=obj.py(1,:)+y0;
            obj.pz(1,:)=obj.pz(1,:)+z0;
            obj.px(2,:)=obj.px(2,:)+x1;
            obj.py(2,:)=obj.py(2,:)+y1;
            obj.pz(2,:)=obj.pz(2,:)+z1-1;
            Dibujar(obj,color);
            %UNTITLED Construct an instance of this class
            %   Detailed explanation goes here
           
        end
        function Dibujar(obj,col)
            mesh(obj.px,obj.py,obj.pz,'facecolor',col)
            hold on
            fill3(obj.px(1,:),obj.py(1,:),obj.pz(1,:),col);
            hold on
            fill3(obj.px(2,:),obj.py(2,:),obj.pz(2,:),col);
            hold on
            grid on
            grid minor
        end
         
    end
        
    end
    

