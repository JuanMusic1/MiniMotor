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
function rdbPiso_Callback(hObject, eventdata, handles)
if(get(hObject,'Value') == 1)
    set(handles.X0,'Enable','on');
    set(handles.Y0,'Enable','on');
    set(handles.Z0,'Enable','on');
    set(handles.Xdos,'Enable','on');
    set(handles.Ydos,'Enable','on');
    set(handles.Zdos,'Enable','on');
    set(handles.txtboxEspesor,'Enable','on');
    set(handles.Xfin,'Enable','on');
    set(handles.Yfin,'Enable','on');
    set(handles.Zfin,'Enable','on');
    set(handles.rdbPared,'Value',0);
    set(handles.rdbColumna,'Value',0);
    set(handles.rdbViga,'Value',0);
    set(handles.rdbRectan,'Value',0);
    set(handles.rdbCircular,'Value',0);
    set(handles.txtBoxBase,'Enable','off');
    set(handles.txtboxAltura,'Enable','off');
    
else
    set(handles.X0,'Enable','off');
    set(handles.Y0,'Enable','off');
    set(handles.Z0,'Enable','off');
    set(handles.Xdos,'Enable','off');
    set(handles.Ydos,'Enable','off');
    set(handles.Zdos,'Enable','off');
    set(handles.txtboxEspesor,'Enable','off');
    set(handles.Xfin,'Enable','off');
    set(handles.Yfin,'Enable','off');
    set(handles.Zfin,'Enable','off');
    set(handles.rdbPared,'Value',0);
    set(handles.rdbColumna,'Value',0);
    set(handles.rdbViga,'Value',0);
    set(handles.rdbRectan,'Value',0);
    set(handles.rdbCircular,'Value',0);
    set(handles.rdbPiso,'Value',0);
end       
% Hint: get(hObject,'Value') returns toggle state of rdbPiso


% --- Executes on button press in rdbPared.
function rdbPared_Callback(hObject, eventdata, handles)
if(get(hObject,'Value') == 1)
    set(handles.X0,'Enable','on');
    set(handles.Y0,'Enable','on');
    set(handles.Z0,'Enable','on');
    set(handles.Xdos,'Enable','on');
    set(handles.Ydos,'Enable','on');
    set(handles.Zdos,'Enable','on');
    set(handles.txtboxEspesor,'Enable','on');
    set(handles.Xfin,'Enable','on');
    set(handles.Yfin,'Enable','on');
    set(handles.Zfin,'Enable','on');
    set(handles.rdbPiso,'Value',0);
    set(handles.rdbColumna,'Value',0);
    set(handles.rdbViga,'Value',0);
    set(handles.rdbRectan,'Value',0);
    set(handles.rdbCircular,'Value',0);
    set(handles.txtBoxBase,'Enable','off');
    set(handles.txtboxAltura,'Enable','off');
    
else
    set(handles.X0,'Enable','off');
    set(handles.Y0,'Enable','off');
    set(handles.Z0,'Enable','off');
    set(handles.Xdos,'Enable','off');
    set(handles.Ydos,'Enable','off');
    set(handles.Zdos,'Enable','off');
    set(handles.txtboxEspesor,'Enable','off');
    set(handles.Xfin,'Enable','off');
    set(handles.Yfin,'Enable','off');
    set(handles.Zfin,'Enable','off');
    set(handles.rdbPared,'Value',0);
    set(handles.rdbPared,'Value',0);
    set(handles.rdbColumna,'Value',0);
    set(handles.rdbViga,'Value',0);
    set(handles.rdbRectan,'Value',0);
    set(handles.rdbCircular,'Value',0);
    set(handles.rdbPiso,'Value',0);
end
% Hint: get(hObject,'Value') returns toggle state of rdbPared


% --- Executes on button press in rdbColumna.
function rdbColumna_Callback(hObject, eventdata, handles)
    if(get(hObject,'Value') == 1)
        set(handles.rdbRectan,'Enable','on');
        set(handles.rdbCircular,'Enable','on');
        set(handles.rdbPiso,'Value',0);
        set(handles.rdbPared,'Value',0);
        set(handles.rdbViga,'Value',0);
        set(handles.X0,'Enable','on');
        set(handles.Y0,'Enable','on');
        set(handles.Z0,'Enable','on');
        set(handles.Xfin,'Enable','on');
        set(handles.Yfin,'Enable','on');
        set(handles.Zfin,'Enable','on');
        set(handles.txtboxEspesor,'Enable','off');
        set(handles.Xdos,'Enable','off');
        set(handles.Ydos,'Enable','off');
        set(handles.Zdos,'Enable','off');

    else
        set(handles.rdbRectan,'Enable','off');
        set(handles.rdbCircular,'Enable','off');
        set(handles.rdbPiso,'Value',0);
        set(handles.rdbPared,'Value',0);
        set(handles.rdbViga,'Value',0);
        set(handles.X0,'Enable','off');
        set(handles.Y0,'Enable','off');
        set(handles.Z0,'Enable','off');
        set(handles.Xfin,'Enable','off');
        set(handles.Yfin,'Enable','off');
        set(handles.Zfin,'Enable','off');
        set(handles.txtboxEspesor,'Enable','off');
    end 

% Hint: get(hObject,'Value') returns toggle state of rdbColumna


% --- Executes on button press in rdbViga.
function rdbViga_Callback(hObject, eventdata, handles)
    if(get(hObject,'Value') == 1)
        set(handles.rdbRectan,'Enable','on');
        set(handles.rdbCircular,'Enable','off');
        set(handles.rdbPiso,'Value',0);
        set(handles.rdbPared,'Value',0);
        set(handles.rdbColumna,'Value',0);
        set(handles.X0,'Enable','on');
        set(handles.Y0,'Enable','on');
        set(handles.Z0,'Enable','on');
        set(handles.Xfin,'Enable','on');
        set(handles.Yfin,'Enable','on');
        set(handles.Zfin,'Enable','on');
        set(handles.txtboxEspesor,'Enable','off');
        set(handles.Xdos,'Enable','off');
        set(handles.Ydos,'Enable','off');
        set(handles.Zdos,'Enable','off');

    else
        set(handles.rdbRectan,'Enable','off');
        set(handles.rdbCircular,'Enable','off');
        set(handles.rdbPiso,'Value',0);
        set(handles.rdbPared,'Value',0);
        set(handles.rdbViga,'Value',0);
        set(handles.X0,'Enable','off');
        set(handles.Y0,'Enable','off');
        set(handles.Z0,'Enable','off');
        set(handles.Xfin,'Enable','off');
        set(handles.Yfin,'Enable','off');
        set(handles.Zfin,'Enable','off');
        set(handles.txtboxEspesor,'Enable','off');
    end 

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



function Xdos_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of Xdos as text
%        str2double(get(hObject,'String')) returns contents of Xdos as a double


% --- Executes during object creation, after setting all properties.
function Xdos_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Ydos_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of Ydos as text
%        str2double(get(hObject,'String')) returns contents of Ydos as a double


% --- Executes during object creation, after setting all properties.
function Ydos_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Zdos_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of Zdos as text
%        str2double(get(hObject,'String')) returns contents of Zdos as a double


% --- Executes during object creation, after setting all properties.
function Zdos_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnGraficar.
function btnGraficar_Callback(hObject, eventdata, handles)
    p = 0;
    if(get(handles.rdbPiso,'Value') == 1 && (get(handles.X0,'String') ~= "") && (get(handles.Y0,'String') ~= "")&& (get(handles.Z0,'String') ~= "")&& (get(handles.Xdos,'String') ~= "")&& (get(handles.Ydos,'String') ~= "")&& (get(handles.Zdos,'String') ~= "")&& (get(handles.Xfin,'String') ~= "")&& (get(handles.Yfin,'String') ~= "")&& (get(handles.Zfin,'String') ~= "")&& (get(handles.txtboxEspesor,'String') ~= ""))
        p=1;
        DosDim(str2double(get(handles.X0,'String')),str2double(get(handles.Y0,'String')),str2double(get(handles.Z0,'String')),str2double(get(handles.Xdos,'String')),str2double(get(handles.Ydos,'String')),str2double(get(handles.Zdos,'String')),str2double(get(handles.Xfin,'String')),str2double(get(handles.Yfin,'String')),str2double(get(handles.Zfin,'String')),'r')      
    end
    if(get(handles.rdbPared,'Value') == 1 && (get(handles.X0,'String') ~= "") && (get(handles.Y0,'String') ~= "")&& (get(handles.Z0,'String') ~= "")&& (get(handles.Xdos,'String') ~= "")&& (get(handles.Ydos,'String') ~= "")&& (get(handles.Zdos,'String') ~= "")&& (get(handles.Xfin,'String') ~= "")&& (get(handles.Yfin,'String') ~= "")&& (get(handles.Zfin,'String') ~= "")&& (get(handles.txtboxEspesor,'String') ~= ""))
        p = 1;
        DosDim(str2double(get(handles.X0,'String')),str2double(get(handles.Y0,'String')),str2double(get(handles.Z0,'String')),str2double(get(handles.Xdos,'String')),str2double(get(handles.Ydos,'String')),str2double(get(handles.Zdos,'String')),str2double(get(handles.Xfin,'String')),str2double(get(handles.Yfin,'String')),str2double(get(handles.Zfin,'String')),'r')
    end   
    if(get(handles.rdbColumna,'Value') == 1 && (get(handles.rdbRectan,'Value') == 1) && (get(handles.txtBoxBase,'String') ~= "") && (get(handles.X0,'String') ~= "") && (get(handles.Y0,'String') ~= "")&& (get(handles.Z0,'String') ~= "")&& (get(handles.Xfin,'String') ~= "")&& (get(handles.Yfin,'String') ~= "")&& (get(handles.Zfin,'String') ~= ""))
        p=1;
        UnaDim(str2double(get(handles.X0,'String')),str2double(get(handles.Y0,'String')),str2double(get(handles.Z0,'String')),str2double(get(handles.Xfin,'String')),str2double(get(handles.Yfin,'String')),str2double(get(handles.Zfin,'String')),str2double(get(handles.txtBoxBase,'String')),str2double(get(handles.txtboxAltura,'String')),'b')
    end
    if(get(handles.rdbViga,'Value') == 1 && (get(handles.rdbRectan,'Value') == 1) && (get(handles.txtBoxBase,'String') ~= "") && (get(handles.X0,'String') ~= "") && (get(handles.Y0,'String') ~= "")&& (get(handles.Z0,'String') ~= "")&& (get(handles.Xfin,'String') ~= "")&& (get(handles.Yfin,'String') ~= "")&& (get(handles.Zfin,'String') ~= ""))
        p=1;
        UnaDim(str2double(get(handles.X0,'String')),str2double(get(handles.Y0,'String')),str2double(get(handles.Z0,'String')),str2double(get(handles.Xfin,'String')),str2double(get(handles.Yfin,'String')),str2double(get(handles.Zfin,'String')),str2double(get(handles.txtBoxBase,'String')),str2double(get(handles.txtboxAltura,'String')),'b')
    end
    if(get(handles.rdbColumna,'Value') == 1 && (get(handles.rdbCircular,'Value') == 1) && (get(handles.txtboxRadio,'String') ~= "") && (get(handles.X0,'String') ~= "") && (get(handles.Y0,'String') ~= "")&& (get(handles.Z0,'String') ~= "")&& (get(handles.Xfin,'String') ~= "")&& (get(handles.Yfin,'String') ~= "")&& (get(handles.Zfin,'String') ~= ""))
        p=1;
        handles.UnaDimCol(str2double(get(handles.X0,'String')),str2double(get(handles.Y0,'String')),str2double(get(handles.Z0,'String')),str2double(get(handles.Xfin,'String')),str2double(get(handles.Yfin,'String')),str2double(get(handles.Zfin,'String')),str2double(get(handles.txtboxRadio,'String')),'a')
    end
    
    if(p == 0)
        msgbox("Faltan Parametros")
    end
    
% --- Executes on button press in rdbRectan.
function rdbRectan_Callback(hObject, eventdata, handles)
if(get(hObject,'Value') == 1)
    set(handles.txtBoxBase,'Enable','on');
    set(handles.txtboxAltura,'Enable','on');
    set(handles.rdbCircular,'Enable','off');
    set(handles.txtboxRadio,'Enable','off');
    
else
    set(handles.txtBoxBase,'Enable','off');
    set(handles.txtboxAltura,'Enable','off');
    set(handles.rdbCircular,'Enable','on');
end
% Hint: get(hObject,'Value') returns toggle state of rdbRectan


% --- Executes on button press in rdbCircular.
function rdbCircular_Callback(hObject, eventdata, handles)
if(get(hObject,'Value') == 1)
    set(handles.txtBoxBase,'Enable','off');
    set(handles.txtboxAltura,'Enable','off');
    set(handles.rdbRectan,'Enable','off');
    set(handles.txtboxRadio,'Enable','on');;
    
else
    set(handles.txtboxRadio,'Enable','off');
    set(handles.rdbRectan,'Enable','on');
    
end
% Hint: get(hObject,'Value') returns toggle state of rdbCircular



function txtBoxBase_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of txtBoxBase as text
%        str2double(get(hObject,'String')) returns contents of txtBoxBase as a double


% --- Executes during object creation, after setting all properties.
function txtBoxBase_CreateFcn(hObject, eventdata, handles)

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtboxAltura_Callback(hObject, eventdata, handles)

% Hints: get(hObject,'String') returns contents of txtboxAltura as text
%        str2double(get(hObject,'String')) returns contents of txtboxAltura as a double


% --- Executes during object creation, after setting all properties.
function txtboxAltura_CreateFcn(hObject, eventdata, handles)

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
