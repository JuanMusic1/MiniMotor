function varargout = Prueba(varargin)
% PRUEBA MATLAB code for Prueba.fig
%      PRUEBA, by itself, creates a new PRUEBA or raises the existing
%      singleton*.
%
%      H = PRUEBA returns the handle to a new PRUEBA or the handle to
%      the existing singleton*.
%
%      PRUEBA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRUEBA.M with the given input arguments.
%
%      PRUEBA('Property','Value',...) creates a new PRUEBA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Prueba_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Prueba_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Prueba

% Last Modified by GUIDE v2.5 10-Apr-2018 23:07:20

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Prueba_OpeningFcn, ...
                   'gui_OutputFcn',  @Prueba_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Prueba is made visible.
function Prueba_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Prueba (see VARARGIN)

% Choose default command line output for Prueba
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Prueba wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Prueba_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
[x,y]=meshgrid(0:0.1:1,0:0.1:2);
z = x;
surf(x,y,z);





% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.


% Hint: place code in OpeningFcn to populate axes3


% --- Executes during object creation, after setting all properties.
function axes2_CreateFcn(hObject, eventdata, handles)


% hObject    handle to axes2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes2
