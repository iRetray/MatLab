function varargout = interfazDeUsuario(varargin)
% INTERFAZDEUSUARIO MATLAB code for interfazDeUsuario.fig
%      INTERFAZDEUSUARIO, by itself, creates a new INTERFAZDEUSUARIO or raises the existing
%      singleton*.
%
%      H = INTERFAZDEUSUARIO returns the handle to a new INTERFAZDEUSUARIO or the handle to
%      the existing singleton*.
%
%      INTERFAZDEUSUARIO('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTERFAZDEUSUARIO.M with the given input arguments.
%
%      INTERFAZDEUSUARIO('Property','Value',...) creates a new INTERFAZDEUSUARIO or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before interfazDeUsuario_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to interfazDeUsuario_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help interfazDeUsuario

% Last Modified by GUIDE v2.5 31-Jan-2020 10:53:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @interfazDeUsuario_OpeningFcn, ...
                   'gui_OutputFcn',  @interfazDeUsuario_OutputFcn, ...
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


% --- Executes just before interfazDeUsuario is made visible.
function interfazDeUsuario_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to interfazDeUsuario (see VARARGIN)

% Choose default command line output for interfazDeUsuario
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes interfazDeUsuario wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = interfazDeUsuario_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% comandos para darle limpieza al entorno
clc

%reduce las salidas de pantalla
format compact

% entradas de datos
texto = get(handles.txt,'String');

% proceso de datos
conversion = double(texto);
bits = dec2bin(conversion);
%reforma una matriz dandole nuevos valores para filas y columnas
cadena = reshape(bits',1,[]);
% al usar bits' se usa la matriz transpuesta 
%el corchete [] calcula solo el valor de y para completar la matriz

% salida de datos
%dos formas de imprimir variables
%se debe usar un identificador segun el tipo %s -> string, %d -> double
%tipos basados en c
fprintf('Texto: %s\n',texto)
fprintf('Conversion a binario %d\n',conversion)
disp(conversion)
disp('Conversion a binario con dec2bin:')
disp(bits)
disp('Unificacion del codigo binario en una sola linea:')
disp(cadena)

%ahora vamos a dibujar los valores
%ones dibuja una matriz de x,y lleno de unos, al igual que zeros


%usando en este caso un tiempo para cada bit
tb = 500;

uno = ones(1,tb);
cero = zeros(1,tb);

frame = [ ];
frameInv = [];


for n=1:length(cadena)
    if(cadena(n)=='1')
        frame = [ frame uno ];
        frameInv = [frameInv cero];
    else
        frame = [ frame cero ];
        frameInv = [frameInv uno];
    end
  
end

cadenaBits = frame*5;
cadenaInversa  = frameInv*5;


axes(handles.axes1)
plot(frame)
axis([ 0 length(frame) -1 2])
title('Señal binaria')
grid on

axes(handles.axes2)
plot(cadenaBits)
axis([ 0 length(frame) -1 6])
title('Cadena de bits')
grid on

axes(handles.axes3)
plot(cadenaInversa)
axis([ 0 length(cadenaInversa) -1 6])
title('Cadena de bits inversa')
grid on




% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
closes



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
