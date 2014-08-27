function varargout = ui(varargin)
% UI MATLAB code for ui.fig
%      UI, by itself, creates a new UI or raises the existing
%      singleton*.
%
%      H = UI returns the handle to a new UI or the handle to
%      the existing singleton*.
%
%      UI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UI.M with the given input arguments.
%
%      UI('Property','Value',...) creates a new UI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before ui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to ui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help ui

% Last Modified by GUIDE v2.5 27-Aug-2014 15:34:23

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @ui_OpeningFcn, ...
                   'gui_OutputFcn',  @ui_OutputFcn, ...
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


% --- Executes just before ui is made visible.
function ui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to ui (see VARARGIN)

% Choose default command line output for ui
handles.output = hObject;

handles.real_points = [4 4 0; -4 4 0; -4 -4 0; 4 -4 0; 0 -2 8];
handles.delta_points = [0 0 0; 0 0 0; 0 0 0; 0 0 0; 0 0 0];
handles.delta_distances = [0 0 0 0 0];

h = findobj('Tag', 'p1_rx');
set(h, 'String', handles.real_points(1, 1));
h = findobj('Tag', 'p1_ry');
set(h, 'String', handles.real_points(1, 2));
h = findobj('Tag', 'p1_rz');
set(h, 'String', handles.real_points(1, 3));
h = findobj('Tag', 'p1_dx');
set(h, 'String', handles.delta_points(1, 1));
h = findobj('Tag', 'p1_dy');
set(h, 'String', handles.delta_points(1, 2));
h = findobj('Tag', 'p1_dz');
set(h, 'String', handles.delta_points(1, 3));
h = findobj('Tag', 'p1_dd');
set(h, 'String', handles.delta_distances(1));

h = findobj('Tag', 'p2_rx');
set(h, 'String', handles.real_points(2, 1));
h = findobj('Tag', 'p2_ry');
set(h, 'String', handles.real_points(2, 2));
h = findobj('Tag', 'p2_rz');
set(h, 'String', handles.real_points(2, 3));
h = findobj('Tag', 'p2_dx');
set(h, 'String', handles.delta_points(2, 1));
h = findobj('Tag', 'p2_dy');
set(h, 'String', handles.delta_points(2, 2));
h = findobj('Tag', 'p2_dz');
set(h, 'String', handles.delta_points(2, 3));
h = findobj('Tag', 'p2_dd');
set(h, 'String', handles.delta_distances(2));

h = findobj('Tag', 'p3_rx');
set(h, 'String', handles.real_points(3, 1));
h = findobj('Tag', 'p3_ry');
set(h, 'String', handles.real_points(3, 2));
h = findobj('Tag', 'p3_rz');
set(h, 'String', handles.real_points(3, 3));
h = findobj('Tag', 'p3_dx');
set(h, 'String', handles.delta_points(3, 1));
h = findobj('Tag', 'p3_dy');
set(h, 'String', handles.delta_points(3, 2));
h = findobj('Tag', 'p3_dz');
set(h, 'String', handles.delta_points(3, 3));
h = findobj('Tag', 'p3_dd');
set(h, 'String', handles.delta_distances(3));

h = findobj('Tag', 'p4_rx');
set(h, 'String', handles.real_points(4, 1));
h = findobj('Tag', 'p4_ry');
set(h, 'String', handles.real_points(4, 2));
h = findobj('Tag', 'p4_rz');
set(h, 'String', handles.real_points(4, 3));
h = findobj('Tag', 'p4_dx');
set(h, 'String', handles.delta_points(4, 1));
h = findobj('Tag', 'p4_dy');
set(h, 'String', handles.delta_points(4, 2));
h = findobj('Tag', 'p4_dz');
set(h, 'String', handles.delta_points(4, 3));
h = findobj('Tag', 'p4_dd');
set(h, 'String', handles.delta_distances(4));

h = findobj('Tag', 'p5_rx');
set(h, 'String', handles.real_points(5, 1));
h = findobj('Tag', 'p5_ry');
set(h, 'String', handles.real_points(5, 2));
h = findobj('Tag', 'p5_rz');
set(h, 'String', handles.real_points(5, 3));
h = findobj('Tag', 'p5_dx');
set(h, 'String', handles.delta_points(5, 1));
h = findobj('Tag', 'p5_dy');
set(h, 'String', handles.delta_points(5, 2));
h = findobj('Tag', 'p5_dz');
set(h, 'String', handles.delta_points(5, 3));
h = findobj('Tag', 'p5_dd');
set(h, 'String', handles.delta_distances(5));

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes ui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = ui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in plot_button.
function plot_button_Callback(hObject, eventdata, handles)
% hObject    handle to plot_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

handles.real_points
[X Y errors] = get_errors(handles.real_points, handles.delta_points, handles.delta_distances, -1);
[C h] = contour(X, Y, errors);
set(h,'ShowText','on');


% --- Executes on button press in save_button.
function save_button_Callback(hObject, eventdata, handles)
% hObject    handle to save_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function p4_rx_Callback(hObject, eventdata, handles)
% hObject    handle to p4_rx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p4_rx as text
%        str2double(get(hObject,'String')) returns contents of p4_rx as a double

handles.real_points(4, 1) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p4_rx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p4_rx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p4_ry_Callback(hObject, eventdata, handles)
% hObject    handle to p4_ry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p4_ry as text
%        str2double(get(hObject,'String')) returns contents of p4_ry as a double

handles.real_points(4, 2) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p4_ry_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p4_ry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p4_rz_Callback(hObject, eventdata, handles)
% hObject    handle to p4_rz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p4_rz as text
%        str2double(get(hObject,'String')) returns contents of p4_rz as a double

handles.real_points(4, 3) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p4_rz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p4_rz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p4_dx_Callback(hObject, eventdata, handles)
% hObject    handle to p4_dx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p4_dx as text
%        str2double(get(hObject,'String')) returns contents of p4_dx as a double

handles.delta_points(4, 1) = str2double(get(hObject,'String'));
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function p4_dx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p4_dx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p4_dy_Callback(hObject, eventdata, handles)
% hObject    handle to p4_dy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p4_dy as text
%        str2double(get(hObject,'String')) returns contents of p4_dy as a double

handles.delta_points(4, 2) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p4_dy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p4_dy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p4_dz_Callback(hObject, eventdata, handles)
% hObject    handle to p4_dz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p4_dz as text
%        str2double(get(hObject,'String')) returns contents of p4_dz as a double

handles.delta_points(4, 3) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p4_dz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p4_dz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p4_dd_Callback(hObject, eventdata, handles)
% hObject    handle to p4_dd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p4_dd as text
%        str2double(get(hObject,'String')) returns contents of p4_dd as a double

handles.delta_distances(4) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p4_dd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p4_dd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p2_dd_Callback(hObject, eventdata, handles)
% hObject    handle to p2_dd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p2_dd as text
%        str2double(get(hObject,'String')) returns contents of p2_dd as a double

handles.delta_distances(2) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p2_dd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2_dd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p2_dz_Callback(hObject, eventdata, handles)
% hObject    handle to p2_dz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p2_dz as text
%        str2double(get(hObject,'String')) returns contents of p2_dz as a double

handles.delta_points(2, 3) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p2_dz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2_dz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p2_dy_Callback(hObject, eventdata, handles)
% hObject    handle to p2_dy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p2_dy as text
%        str2double(get(hObject,'String')) returns contents of p2_dy as a double

handles.delta_points(2, 2) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p2_dy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2_dy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p2_dx_Callback(hObject, eventdata, handles)
% hObject    handle to p2_dx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p2_dx as text
%        str2double(get(hObject,'String')) returns contents of p2_dx as a double

handles.delta_points(2, 1) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p2_dx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2_dx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p2_rz_Callback(hObject, eventdata, handles)
% hObject    handle to p2_rz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p2_rz as text
%        str2double(get(hObject,'String')) returns contents of p2_rz as a double

handles.real_points(2, 3) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p2_rz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2_rz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p2_ry_Callback(hObject, eventdata, handles)
% hObject    handle to p2_ry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p2_ry as text
%        str2double(get(hObject,'String')) returns contents of p2_ry as a double

handles.real_points(2, 2) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p2_ry_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2_ry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p2_rx_Callback(hObject, eventdata, handles)
% hObject    handle to p2_rx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p2_rx as text
%        str2double(get(hObject,'String')) returns contents of p2_rx as a double

handles.real_points(2, 1) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p2_rx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p2_rx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p5_rx_Callback(hObject, eventdata, handles)
% hObject    handle to p5_rx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p5_rx as text
%        str2double(get(hObject,'String')) returns contents of p5_rx as a double

handles.real_points(5, 1) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p5_rx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p5_rx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p5_ry_Callback(hObject, eventdata, handles)
% hObject    handle to p5_ry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p5_ry as text
%        str2double(get(hObject,'String')) returns contents of p5_ry as a double

handles.real_points(5, 2) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p5_ry_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p5_ry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p5_rz_Callback(hObject, eventdata, handles)
% hObject    handle to p5_rz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p5_rz as text
%        str2double(get(hObject,'String')) returns contents of p5_rz as a double

handles.real_points(5, 3) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p5_rz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p5_rz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p5_dx_Callback(hObject, eventdata, handles)
% hObject    handle to p5_dx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p5_dx as text
%        str2double(get(hObject,'String')) returns contents of p5_dx as a double

handles.delta_points(5, 1) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p5_dx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p5_dx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p5_dy_Callback(hObject, eventdata, handles)
% hObject    handle to p5_dy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p5_dy as text
%        str2double(get(hObject,'String')) returns contents of p5_dy as a double

handles.delta_points(5, 2) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p5_dy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p5_dy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p5_dz_Callback(hObject, eventdata, handles)
% hObject    handle to p5_dz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p5_dz as text
%        str2double(get(hObject,'String')) returns contents of p5_dz as a double

handles.delta_points(5, 3) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p5_dz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p5_dz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p5_dd_Callback(hObject, eventdata, handles)
% hObject    handle to p5_dd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p5_dd as text
%        str2double(get(hObject,'String')) returns contents of p5_dd as a double

handles.delta_distances(5) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p5_dd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p5_dd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p3_dd_Callback(hObject, eventdata, handles)
% hObject    handle to p3_dd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p3_dd as text
%        str2double(get(hObject,'String')) returns contents of p3_dd as a double

handles.delta_distances(3) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p3_dd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p3_dd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p3_dz_Callback(hObject, eventdata, handles)
% hObject    handle to p3_dz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p3_dz as text
%        str2double(get(hObject,'String')) returns contents of p3_dz as a double

handles.delta_points(3, 3) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p3_dz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p3_dz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p3_dy_Callback(hObject, eventdata, handles)
% hObject    handle to p3_dy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p3_dy as text
%        str2double(get(hObject,'String')) returns contents of p3_dy as a double

handles.delta_points(3, 2) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p3_dy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p3_dy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p3_dx_Callback(hObject, eventdata, handles)
% hObject    handle to p3_dx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p3_dx as text
%        str2double(get(hObject,'String')) returns contents of p3_dx as a double

handles.delta_points(3, 1) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p3_dx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p3_dx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p3_rz_Callback(hObject, eventdata, handles)
% hObject    handle to p3_rz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p3_rz as text
%        str2double(get(hObject,'String')) returns contents of p3_rz as a double

handles.real_points(3, 3) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p3_rz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p3_rz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p3_ry_Callback(hObject, eventdata, handles)
% hObject    handle to p3_ry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p3_ry as text
%        str2double(get(hObject,'String')) returns contents of p3_ry as a double

handles.real_points(3, 2) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p3_ry_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p3_ry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p3_rx_Callback(hObject, eventdata, handles)
% hObject    handle to p3_rx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p3_rx as text
%        str2double(get(hObject,'String')) returns contents of p3_rx as a double

handles.real_points(3, 1) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p3_rx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p3_rx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p1_rx_Callback(hObject, eventdata, handles)
% hObject    handle to p1_rx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p1_rx as text
%        str2double(get(hObject,'String')) returns contents of p1_rx as a double

handles.real_points(1, 1) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p1_rx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1_rx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p1_ry_Callback(hObject, eventdata, handles)
% hObject    handle to p1_ry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p1_ry as text
%        str2double(get(hObject,'String')) returns contents of p1_ry as a double

handles.real_points(1, 2) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p1_ry_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1_ry (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p1_rz_Callback(hObject, eventdata, handles)
% hObject    handle to p1_rz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p1_rz as text
%        str2double(get(hObject,'String')) returns contents of p1_rz as a double

handles.real_points(1, 3) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p1_rz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1_rz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p1_dx_Callback(hObject, eventdata, handles)
% hObject    handle to p1_dx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p1_dx as text
%        str2double(get(hObject,'String')) returns contents of p1_dx as a double

handles.delta_points(1, 1) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p1_dx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1_dx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p1_dy_Callback(hObject, eventdata, handles)
% hObject    handle to p1_dy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p1_dy as text
%        str2double(get(hObject,'String')) returns contents of p1_dy as a double

handles.delta_points(1, 2) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p1_dy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1_dy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p1_dz_Callback(hObject, eventdata, handles)
% hObject    handle to p1_dz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p1_dz as text
%        str2double(get(hObject,'String')) returns contents of p1_dz as a double

handles.delta_points(1, 3) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p1_dz_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1_dz (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function p1_dd_Callback(hObject, eventdata, handles)
% hObject    handle to p1_dd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of p1_dd as text
%        str2double(get(hObject,'String')) returns contents of p1_dd as a double

handles.delta_distances(1) = str2double(get(hObject,'String'));
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function p1_dd_CreateFcn(hObject, eventdata, handles)
% hObject    handle to p1_dd (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
