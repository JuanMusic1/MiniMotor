function varargout = Vista(varargin)


% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Vista_OpeningFcn, ...
                   'gui_OutputFcn',  @Vista_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before Vista is made visible.
function Vista_OpeningFcn(hObject, eventdata, handles, varargin)

% Choose default command line output for Vista
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% --- Outputs from this function are returned to the command line.
function varargout = Vista_OutputFcn(hObject, eventdata, handles)


% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)


% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)

% Hint: place code in OpeningFcn to populate axes1
h = rotate3d;
h.RotateStyle = 'box';
h.Enable = 'on';
xlabel('Eje X')
ylabel('Eje Y')
zlabel('Eje Z')
daspect([1 1 1])
grid on
grid minor


% --- Executes on button press in rdbPiso.
function rdbPiso_Callback(rdbPiso, eventdata, handles)
if(get(rdbPiso,'Value') == 1)
    habilitarGeneral();
end       
% Hint: get(hObject,'Value') returns toggle state of rdbPiso


% --- Executes on button press in rdbPared.
function rdbPared_Callback(hObject, eventdata, handles)

% Hint: get(hObject,'Value') returns toggle state of rdbPared


% --- Executes on button press in rdbColumna.
function rdbColumna_Callback(hObject, eventdata, handles)

% Hint: get(hObject,'Value') returns toggle state of rdbColumna


% --- Executes on button press in rdbViga.
function rdbViga_Callback(hObject, eventdata, handles)

% Hint: get(hObject,'Value') returns toggle state of rdbViga



function X0_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of X0 as text
%        str2double(get(hObject,'String')) returns contents of X0 as a double


% --- Executes during object creation, after setting all properties.
function X0_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Y0_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of Y0 as text
%        str2double(get(hObject,'String')) returns contents of Y0 as a double


% --- Executes during object creation, after setting all properties.
function Y0_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Z0_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of Z0 as text
%        str2double(get(hObject,'String')) returns contents of Z0 as a double


% --- Executes during object creation, after setting all properties.
function Z0_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Xfin_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of Xfin as text
%        str2double(get(hObject,'String')) returns contents of Xfin as a double


% --- Executes during object creation, after setting all properties.
function Xfin_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Yfin_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of Yfin as text
%        str2double(get(hObject,'String')) returns contents of Yfin as a double


% --- Executes during object creation, after setting all properties.
function Yfin_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Zfin_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of Zfin as text
%        str2double(get(hObject,'String')) returns contents of Zfin as a double


% --- Executes during object creation, after setting all properties.
function Zfin_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnGraficar.
function btnGraficar_Callback(hObject, eventdata, handles)

% --- Executes on button press in rdbRectan.
function rdbRectan_Callback(hObject, eventdata, handles)

% Hint: get(hObject,'Value') returns toggle state of rdbRectan


% --- Executes on button press in rdbCircular.
function rdbCircular_Callback(hObject, eventdata, handles)

% Hint: get(hObject,'Value') returns toggle state of rdbCircular



function txtBoxABase_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of txtBoxABase as text
%        str2double(get(hObject,'String')) returns contents of txtBoxABase as a double


% --- Executes during object creation, after setting all properties.
function txtBoxABase_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtboxLong_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of txtboxLong as text
%        str2double(get(hObject,'String')) returns contents of txtboxLong as a double


% --- Executes during object creation, after setting all properties.
function txtboxLong_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtboxRadio_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of txtboxRadio as text
%        str2double(get(hObject,'String')) returns contents of txtboxRadio as a double


% --- Executes during object creation, after setting all properties.
function txtboxRadio_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnEditar.
function btnEditar_Callback(hObject, eventdata, handles)



function txtboxEspesor_Callback(hObject, eventdata, handles)


% Hints: get(hObject,'String') returns contents of txtboxEspesor as text
%        str2double(get(hObject,'String')) returns contents of txtboxEspesor as a double


% --- Executes during object creation, after setting all properties.
function txtboxEspesor_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function habilitarGeneral()
    set(X0,'Enable',True);
    set(Y0,'Enable',True);
    set(Z0,'Enable',True);
    set(Xfin,'Enable',True);
    set(Yfin,'Enable',True);
    set(Zfin,'Enable',True);
    set(X0,'Enable',True);
    
