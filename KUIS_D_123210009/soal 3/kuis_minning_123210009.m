function varargout = kuis_minning_123210009(varargin)
% KUIS_MINNING_123210009 MATLAB code for kuis_minning_123210009.fig
%      KUIS_MINNING_123210009, by itself, creates a new KUIS_MINNING_123210009 or raises the existing
%      singleton*.
%
%      H = KUIS_MINNING_123210009 returns the handle to a new KUIS_MINNING_123210009 or the handle to
%      the existing singleton*.
%
%      KUIS_MINNING_123210009('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in KUIS_MINNING_123210009.M with the given input arguments.
%
%      KUIS_MINNING_123210009('Property','Value',...) creates a new KUIS_MINNING_123210009 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before kuis_minning_123210009_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to kuis_minning_123210009_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help kuis_minning_123210009

% Last Modified by GUIDE v2.5 21-Mar-2023 13:42:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @kuis_minning_123210009_OpeningFcn, ...
                   'gui_OutputFcn',  @kuis_minning_123210009_OutputFcn, ...
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


% --- Executes just before kuis_minning_123210009 is made visible.
function kuis_minning_123210009_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to kuis_minning_123210009 (see VARARGIN)

% Choose default command line output for kuis_minning_123210009
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes kuis_minning_123210009 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = kuis_minning_123210009_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in show.
function show_Callback(hObject, eventdata, handles)
% hObject    handle to show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% memanggil 2 - 8 kolom dari dalam file cancer.csv
range = detectImportOptions('new_cancer.csv');
range.SelectedVariableNames = (2 : 7);

% memanggil dan membaca matriks/tabel
data = readmatrix('new_cancer.csv',range);
set(handles.tabel, 'data', data);


function radius_Callback(hObject, eventdata, handles)
% hObject    handle to radius (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of radius as text
%        str2double(get(hObject,'String')) returns contents of radius as a double


% --- Executes during object creation, after setting all properties.
function radius_CreateFcn(hObject, eventdata, handles)
% hObject    handle to radius (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function texture_Callback(hObject, eventdata, handles)
% hObject    handle to texture (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of texture as text
%        str2double(get(hObject,'String')) returns contents of texture as a double


% --- Executes during object creation, after setting all properties.
function texture_CreateFcn(hObject, eventdata, handles)
% hObject    handle to texture (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function perimeter_Callback(hObject, eventdata, handles)
% hObject    handle to perimeter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of perimeter as text
%        str2double(get(hObject,'String')) returns contents of perimeter as a double


% --- Executes during object creation, after setting all properties.
function perimeter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to perimeter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function area_Callback(hObject, eventdata, handles)
% hObject    handle to area (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of area as text
%        str2double(get(hObject,'String')) returns contents of area as a double


% --- Executes during object creation, after setting all properties.
function area_CreateFcn(hObject, eventdata, handles)
% hObject    handle to area (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function smoothness_Callback(hObject, eventdata, handles)
% hObject    handle to smoothness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of smoothness as text
%        str2double(get(hObject,'String')) returns contents of smoothness as a double


% --- Executes during object creation, after setting all properties.
function smoothness_CreateFcn(hObject, eventdata, handles)
% hObject    handle to smoothness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function concavity_Callback(hObject, eventdata, handles)
% hObject    handle to concavity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of concavity as text
%        str2double(get(hObject,'String')) returns contents of concavity as a double


% --- Executes during object creation, after setting all properties.
function concavity_CreateFcn(hObject, eventdata, handles)
% hObject    handle to concavity (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function k_Callback(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of k as text
%        str2double(get(hObject,'String')) returns contents of k as a double


% --- Executes during object creation, after setting all properties.
function k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in submit.
function submit_Callback(hObject, eventdata, handles)
% hObject    handle to submit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% mengambil data dari input-an GUI
radius = str2double(get(handles.radius, 'string'));
texture = str2double(get(handles.texture, 'string'));
perimeter = str2double(get(handles.perimeter, 'string'));
area = str2double(get(handles.area, 'string'));
smoothness = str2double(get(handles.smoothness, 'string'));
concavity = str2double(get(handles.concavity, 'string'));
k = str2double(get(handles.k, 'string'));

% memasukkan inputan ke dalam variabel sample
sample = [radius texture perimeter area smoothness concavity];

% Training
% memanggil 2 - 8 kolom dari dalam file cancer.csv
range = detectImportOptions('new_cancer.csv');
range.SelectedVariableNames = (2 : 7);

% memasukkan data tabel kolom 2 - 7 variabel training
training = readmatrix('new_cancer.csv', range);

% Group
% memanggil kolom 8 dari dalam file cancer.csv
range = detectImportOptions('new_cancer.csv');
range.SelectedVariableNames = (8);

% memasukkan data tabel kolom 8 ke variabel group
group = readmatrix('new_cancer.csv', range);

% membuat sebuah obek klasifikasi dengan alogritma KNN
class = fitcknn(training, group, 'NumNeighbor', k);

% memasukkan hasil klasifikasi ke dalam variabel hasilKlasifikasi
hasilKlasifikasi = predict(class, sample);


% menampilkan hasil ke GUI
set(handles.hasil, 'string', hasilKlasifikasi);



% --- Executes on button press in clear.
function clear_Callback(hObject, eventdata, handles)
% hObject    handle to clear (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% mereset/menghapus data dalam tabel
set(handles.tabel, 'data', '');


% --- Executes when entered data in editable cell(s) in tabel.
function tabel_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to tabel (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)




% --- Executes when selected cell(s) is changed in tabel.
function tabel_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to tabel (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)
