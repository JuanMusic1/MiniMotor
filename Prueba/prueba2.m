

function varargout = prueba2(varargin)
% PRUEBA2 MATLAB code for prueba2.fig
%      PRUEBA2, by itself, creates a new PRUEBA2 or raises the existing
%      singleton*.
%
%      H = PRUEBA2 returns the handle to a new PRUEBA2 or the handle to
%      the existing singleton*.
%
%      PRUEBA2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PRUEBA2.M with the given input arguments.
%
%      PRUEBA2('Property','Value',...) creates a new PRUEBA2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before prueba2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to prueba2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help prueba2

% Last Modified by GUIDE v2.5 11-Apr-2018 20:06:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @prueba2_OpeningFcn, ...
                   'gui_OutputFcn',  @prueba2_OutputFcn, ...
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


function setGlobalx(val)
global x
x = val;

function r = getGlobalx
global x
r = x;
% --- Executes just before prueba2 is made visible.
function prueba2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to prueba2 (see VARARGIN)

% Choose default command line output for prueba2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes prueba2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = prueba2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
h = rotate3d;
h.RotateStyle = 'box';
h.Enable = 'on';

grid on
grid minor
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)

% boxplot3c(1, 1, 1, 3, 5, 7, 1)
% boxplot3c(4, 6, 8, 4, 5, 1, 0)
% boxplot3c(8, 11, 9, 1, 1, 1, 1)
setGlobalx(caja(1, 1, 1, 3, 5, 7,'b'));


xlabel('Eje X')
ylabel('Eje Y')
zlabel('Eje Z')
daspect([1 1 1])
grid on

% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
