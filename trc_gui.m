function varargout = trc_gui(varargin)
% TRC_GUI MATLAB code for trc_gui.fig
%      TRC_GUI, by itself, creates a new TRC_GUI or raises the existing
%      singleton*.
%
%      H = TRC_GUI returns the handle to a new TRC_GUI or the handle to
%      the existing singleton*.
%
%      TRC_GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TRC_GUI.M with the given input arguments.
%
%      TRC_GUI('Property','Value',...) creates a new TRC_GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before trc_gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to trc_gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help trc_gui

% Last Modified by GUIDE v2.5 04-Oct-2013 11:50:13

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @trc_gui_OpeningFcn, ...
                   'gui_OutputFcn',  @trc_gui_OutputFcn, ...
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


% --- Executes just before trc_gui is made visible.
function trc_gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to trc_gui (see VARARGIN)

% Choose default command line output for trc_gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes trc_gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = trc_gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function B_Y0_CM_Callback(hObject, eventdata, handles)
% hObject    handle to B_Y0_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of B_Y0_CM as text
%        str2double(get(hObject,'String')) returns contents of B_Y0_CM as a double


% --- Executes during object creation, after setting all properties.
function B_Y0_CM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to B_Y0_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B_X0_CM_Callback(hObject, eventdata, handles)
% hObject    handle to B_X0_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of B_X0_CM as text
%        str2double(get(hObject,'String')) returns contents of B_X0_CM as a double


% --- Executes during object creation, after setting all properties.
function B_X0_CM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to B_X0_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B_LB_MM_Callback(hObject, eventdata, handles)
% hObject    handle to B_LB_MM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of B_LB_MM as text
%        str2double(get(hObject,'String')) returns contents of B_LB_MM as a double


% --- Executes during object creation, after setting all properties.
function B_LB_MM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to B_LB_MM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B_BETA_GA_Callback(hObject, eventdata, handles)
% hObject    handle to B_BETA_GA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of B_BETA_GA as text
%        str2double(get(hObject,'String')) returns contents of B_BETA_GA as a double


% --- Executes during object creation, after setting all properties.
function B_BETA_GA_CreateFcn(hObject, eventdata, handles)
% hObject    handle to B_BETA_GA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function B_I0_A_Callback(hObject, eventdata, handles)
% hObject    handle to B_I0_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of B_I0_A as text
%        str2double(get(hObject,'String')) returns contents of B_I0_A as a double


% --- Executes during object creation, after setting all properties.
function B_I0_A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to B_I0_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function E_VP_V_Callback(hObject, eventdata, handles)
% hObject    handle to E_VP_V (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of E_VP_V as text
%        str2double(get(hObject,'String')) returns contents of E_VP_V as a double


% --- Executes during object creation, after setting all properties.
function E_VP_V_CreateFcn(hObject, eventdata, handles)
% hObject    handle to E_VP_V (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function E_D_MM_Callback(hObject, eventdata, handles)
% hObject    handle to E_D_MM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of E_D_MM as text
%        str2double(get(hObject,'String')) returns contents of E_D_MM as a double


% --- Executes during object creation, after setting all properties.
function E_D_MM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to E_D_MM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function E_LP_MM_Callback(hObject, eventdata, handles)
% hObject    handle to E_LP_MM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of E_LP_MM as text
%        str2double(get(hObject,'String')) returns contents of E_LP_MM as a double


% --- Executes during object creation, after setting all properties.
function E_LP_MM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to E_LP_MM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function E_X0_CM_Callback(hObject, eventdata, handles)
% hObject    handle to E_X0_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of E_X0_CM as text
%        str2double(get(hObject,'String')) returns contents of E_X0_CM as a double


% --- Executes during object creation, after setting all properties.
function E_X0_CM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to E_X0_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function E_Y0_CM_Callback(hObject, eventdata, handles)
% hObject    handle to E_Y0_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of E_Y0_CM as text
%        str2double(get(hObject,'String')) returns contents of E_Y0_CM as a double


% --- Executes during object creation, after setting all properties.
function E_Y0_CM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to E_Y0_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function P_VAC_V_Callback(hObject, eventdata, handles)
% hObject    handle to P_VAC_V (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
set(handles.butVac,'Value',1.0);
% Hints: get(hObject,'String') returns contents of P_VAC_V as text
%        str2double(get(hObject,'String')) returns contents of P_VAC_V as a double


% --- Executes during object creation, after setting all properties.
function P_VAC_V_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P_VAC_V (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function P_V_c_Callback(hObject, eventdata, handles)
% hObject    handle to P_V_c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
set(handles.butVel,'Value',1.0);

% Hints: get(hObject,'String') returns contents of P_V_c as text
%        str2double(get(hObject,'String')) returns contents of P_V_c as a double


% --- Executes during object creation, after setting all properties.
function P_V_c_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P_V_c (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in butVac.
function butVac_Callback(hObject, eventdata, handles)
% hObject    handle to butVac (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of butVac


% --- Executes on button press in butVel.
function butVel_Callback(hObject, eventdata, handles)
% hObject    handle to butVel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of butVel


function P_M_KG_Callback(hObject, eventdata, handles)
% hObject    handle to P_M_KG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of P_M_KG as text
%        str2double(get(hObject,'String')) returns contents of P_M_KG as a double


% --- Executes during object creation, after setting all properties.
function P_M_KG_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P_M_KG (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function P_Q_C_Callback(hObject, eventdata, handles)
% hObject    handle to P_Q_C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of P_Q_C as text
%        str2double(get(hObject,'String')) returns contents of P_Q_C as a double


% --- Executes during object creation, after setting all properties.
function P_Q_C_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P_Q_C (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function P_X0_CM_Callback(hObject, eventdata, handles)
% hObject    handle to P_X0_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of P_X0_CM as text
%        str2double(get(hObject,'String')) returns contents of P_X0_CM as a double


% --- Executes during object creation, after setting all properties.
function P_X0_CM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P_X0_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function P_Y0_CM_Callback(hObject, eventdata, handles)
% hObject    handle to P_Y0_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of P_Y0_CM as text
%        str2double(get(hObject,'String')) returns contents of P_Y0_CM as a double


% --- Executes during object creation, after setting all properties.
function P_Y0_CM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to P_Y0_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function A_XI_CM_Callback(hObject, eventdata, handles)
% hObject    handle to A_XI_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of A_XI_CM as text
%        str2double(get(hObject,'String')) returns contents of A_XI_CM as a double


% --- Executes during object creation, after setting all properties.
function A_XI_CM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A_XI_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A_XF_CM_Callback(hObject, eventdata, handles)
% hObject    handle to A_XF_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of A_XF_CM as text
%        str2double(get(hObject,'String')) returns contents of A_XF_CM as a double


% --- Executes during object creation, after setting all properties.
function A_XF_CM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A_XF_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A_YI_CM_Callback(hObject, eventdata, handles)
% hObject    handle to A_YI_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of A_YI_CM as text
%        str2double(get(hObject,'String')) returns contents of A_YI_CM as a double


% --- Executes during object creation, after setting all properties.
function A_YI_CM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A_YI_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A_YF_CM_Callback(hObject, eventdata, handles)
% hObject    handle to A_YF_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of A_YF_CM as text
%        str2double(get(hObject,'String')) returns contents of A_YF_CM as a double


% --- Executes during object creation, after setting all properties.
function A_YF_CM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A_YF_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function A_TELA_CM_Callback(hObject, eventdata, handles)
% hObject    handle to A_TELA_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of A_TELA_CM as text
%        str2double(get(hObject,'String')) returns contents of A_TELA_CM as a double


% --- Executes during object creation, after setting all properties.
function A_TELA_CM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to A_TELA_CM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in run.
function run_Callback(hObject, eventdata, handles)
% hObject    handle to run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

arq=get(handles.arquivo,'String');
if isempty(arq)
    disp([' ']);
    fid=1;
else
    fid=fopen(arq,'w');
end

% -----------------------------------------------------------
% FORMATO NUMERICO
prec=str2num(get(handles.decimais,'String'));
ff=['%' num2str(prec+6) '.' num2str(prec) 'e'];
xx=get(handles.separador,'String');

% -----------------------------------------------------------
% TELA

% apagar ou nao a tela entre iteracoes
tocleanfig=get(handles.tocleanfig,'Value');
if tocleanfig==1
    cla(handles.grafico);
end
hold(handles.grafico,'on');

% Pega a area limite do grafico
xi=str2num(get(handles.A_XI_CM,'String'));
xf=str2num(get(handles.A_XF_CM,'String'));
yi=str2num(get(handles.A_YI_CM,'String'));
yf=str2num(get(handles.A_YF_CM,'String'));

% ajusta as dimensoes do objeto
set(handles.grafico, 'xlim', [xi xf]);
set(handles.grafico, 'ylim', [yi yf]);
% coloca as legendas
xlabel(handles.grafico, 'Posicao-x (cm)');
ylabel(handles.grafico, 'Posicao-y (cm)');
grid(handles.grafico,'on');
% anteparo (m)
trc_tela=str2num(get(handles.A_TELA_CM,'String'))*1e-2;
line([trc_tela, trc_tela]*100, [yi, yf],...
    'color','k','linewidth',2,'linestyle','-');

% -----------------------------------------------------------
% ELETRICO
% separacao entre as placas (m)
d=str2num(get(handles.E_D_MM,'String'))*1e-3;
% campo eletrico ideal (V/m)
E0=str2num(get(handles.E_VP_V,'String'))/d*(-1); 
% comprimento das placas ideais (m)
lp=str2num(get(handles.E_LP_MM,'String'))*1e-3; 
% centro das placas (m)
Ex0=str2num(get(handles.E_X0_CM,'String'))*1e-2;
Ey0=str2num(get(handles.E_X0_CM,'String'))*1e-2;
% campo ideal comeca e termina de agir (m)
xEi=Ex0-lp/2; xEf=Ex0+lp/2; 
yEi=Ey0-d/2; yEf=Ey0+d/2; 
% coloca um retangulo na figura para indicar o campo eletrico
rectangle('Position',[xEi, yEi, xEf-xEi, yEf-yEi]*1e2,...
	  'edgecolor','r','linewidth',2,'linestyle','-.');
fprintf(fid,['# campo E(V/m) = ' ff '\n'],E0);
fprintf(fid,['# E pos_x inicial(m) = ' ff '\n'],xEi);
fprintf(fid,['# E pos_x final(m) = ' ff '\n'],xEf);
  
% -----------------------------------------------------------
% MAGNETICO
% corrente nas bobinas (A)
i0=str2num(get(handles.B_I0_A,'String'))*1e-1;
% beta (T/A)
beta=str2num(get(handles.B_BETA_GA,'String'))*1e-4; 
% campo magnetico ideal (T)
B0=i0*beta;
% raio do campo magnetico (m)
Lb=str2num(get(handles.B_LB_MM,'String'))*1e-3;
% centro das placas (m)
Bx0=str2num(get(handles.B_X0_CM,'String'))*1e-2;
By0=str2num(get(handles.B_X0_CM,'String'))*1e-2;
% campo ideal comeca e termina de agir (m)
xBi=Bx0-Lb/2; xBf=Bx0+Lb/2; 
yBi=By0-Lb/2; yBf=By0+Lb/2; 
% coloca um retangulo na figura para indicar o campo magnetico
rectangle('Position',[xBi, yBi, xBf-xBi, yBf-yBi]*1e2,...
	  'edgecolor','g','linewidth',2,'linestyle','--',...
      'curvature',[1 1]);
fprintf(fid,['# campo B(G) = ' ff '\n'],B0*1e4);
fprintf(fid,['# B pos_x inicial(m) = ' ff '\n'],xBi);
fprintf(fid,['# B pos_x final(m) = ' ff '\n'],xBf);

% -----------------------------------------------------------
% PARTICULA
% posicao, vetor (m)
x0=str2num(get(handles.P_X0_CM,'String'))*1e-2;
y0=str2num(get(handles.P_Y0_CM,'String'))*1e-2;
X(1)=x0; X(2)=y0; X(3)=0;
% Carga (C)
qe=str2num(get(handles.P_Q_C,'String')); 
% Massa (Kg)
me=str2num(get(handles.P_M_KG,'String')); 
if get(handles.butVac,'Value')==1
    % Tensao aceleradora (V)
    Vac=str2num(get(handles.P_VAC_V,'String')); 
    % Velocidade inicial (m/s)
    v0=sqrt(2*abs(qe)*abs(Vac)/me);
end
c=3e8; % m/s
if get(handles.butVel,'Value')==1
    % Velocidade inicial (m/s)
    v0=c*str2num(get(handles.P_V_c,'String'));
    % Tensao aceleradora (V)
    Vac=me*v0*v0/2/abs(qe);     
end
V(1)=v0; V(2)=0; V(3)=0;

fprintf(fid,['# pos0(m) = ' ff xx ff xx ff '\n'],X(1),X(2),X(3));
fprintf(fid,['# Vac(V) = ' ff '\n'],Vac);
fprintf(fid,['# VO/c = ' ff xx ff xx ff '\n'],V(1)/c,V(2)/c,V(3)/c);

% ------------------------------------------------------------------------------%
% DISCRETIZACAO NO TEMPO
% passo de tempo (s), calculado para que a particula ande step-mm
stepmm=str2num(get(handles.STEP_MM,'String')); 
dt=stepmm/(v0*1e3);
% distancia percorrida em um dt (consistencia da definicao acima)
% atualizar o grafico a cada # time-steps
ntoplot=str2num(get(handles.ATUAL_N,'String')); 
% gravar os dados a cada # time-steps
ntosave=str2num(get(handles.GRAVAR_N,'String'));
fprintf(fid,['# time step(s) = ' ff '\n'],dt);
fprintf(fid,['# time step(mm) = ' ff '\n'],dt*v0*1e3); 
% Estima o tamanho o numero de linhas no arquivo de saida
nn=floor((trc_tela-x0)/v0/dt/ntosave+0.5);
clear listt listX listV listE listB;
listt(1:nn)=0;
listX(1:nn,1:3)=0;
listV(1:nn,1:3)=0;
listE(1:nn,1:3)=0;
listB(1:nn,1:3)=0;
% Maximo de iteracoes permitidas
maxiter=str2num(get(handles.maxiter,'String')); 

% ------------------------------------------------------------------------------%
% LOOP NO TEMPO

fprintf(fid,['#     t(s)      x(cm)      y(cm)      z(cm)    Ex(V/m)    Ey(V/m)    Ez(V/m)'...
             '      Bx(T)      By(T)      Bz(T)    vx(m/s)    vy(m/s)    vz(m/s) \n']);

t=1; nl=0;
while (t<maxiter)

  % campo eletrico
  E(1)=0; E(2)=0; E(3)=0;
  if ( (X(1) >= xEi) && (X(1) <= xEf) && X(2) >= yEi && X(2) <=yEf)
    E(2)=E0;
  end
  % campo magnetico
  B(1)=0; B(2)=0; B(3)=0;
  if ( sqrt(X(1)*X(1) + X(2)*X(2)) <= Lb/2)
    B(3)=B0;
  end
  
  % forca
  Fe=qe*E; % N
  Fb=qe*cross(V,B); % N
  % aceleracao
  acel=(Fe+Fb)/me; % m/s^2
  
  % atualiza a posicao
  X = X + dt*V + acel*dt*dt/2;
  if t>1
  % campo eletrico
  E(1)=0; E(2)=0; E(3)=0;
  if ( (X(1) >= xEi) && (X(1) <= xEf) && X(2) >= yEi && X(2) <=yEf)
    E(2)=E0;
  end
  % campo magnetico
  B(1)=0; B(2)=0; B(3)=0;
  if ( sqrt(X(1)*X(1) + X(2)*X(2)) <= Lb/2)
    B(3)=B0;
  end
  
  % forca
  Fe=qe*E; % N
  Fb=qe*cross(V,B); % N
  % aceleracao
  acel_next=(Fe+Fb)/me; % m/s^2

  X = X + (acel_next - acel_old)*dt*dt/12;
  end
  
  % atualiza a velocidade
  V= V + dt*acel;  
  acel_old=acel;

  % testa se ainda esta na area do grafico
  if (X(1)<xi || X(1)>trc_tela || X(2)<yi || X(2)>yf)
    break;      
  end
  
  % guarda algumas coisas para analise posterior
  if mod(t,ntosave)==0
    nl=nl+1;
    listt(nl)=t*dt;
    listX(nl,:)=X;
    listV(nl,:)=V;
    listE(nl,:)=E;
    listB(nl,:)=B;
  end
  % plot
  if mod(t,ntoplot)==0
    plot(handles.grafico, listX(1:nl,1)*100,listX(1:nl,2)*100,'-'); % em cm
    drawnow;
  end
  
  % atualiza o contador de tempo
  t=t+1;
end
for i=1:nl
    fprintf(fid,[ff xx],listt(i));
    fprintf(fid,[ff xx ff xx ff xx],listX(i,1),listX(i,2),listX(i,3));
    fprintf(fid,[ff xx ff xx ff xx],listE(i,1),listE(i,2),listE(i,3));
    fprintf(fid,[ff xx ff xx ff xx],listB(i,1),listB(i,2),listB(i,3));
    fprintf(fid,[ff xx ff xx ff '\n'],listV(i,1)/c,listV(i,2)/c,listV(i,3)/c); 
end
fprintf(fid,['# Final X (mm) = ' ff '\n'],X(1)*1e3);
fprintf(fid,['# Final Y (mm) = ' ff '\n'],X(2)*1e3);
if ~isempty(arq)
    fclose(fid);
end



% --- Executes during object creation, after setting all properties.
function grafico_CreateFcn(hObject, eventdata, handles)
% hObject    handle to grafico (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate grafico



function STEP_MM_Callback(hObject, eventdata, handles)
% hObject    handle to STEP_MM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of STEP_MM as text
%        str2double(get(hObject,'String')) returns contents of STEP_MM as a double


% --- Executes during object creation, after setting all properties.
function STEP_MM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to STEP_MM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function GRAVAR_N_Callback(hObject, eventdata, handles)
% hObject    handle to GRAVAR_N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of GRAVAR_N as text
%        str2double(get(hObject,'String')) returns contents of GRAVAR_N as a double


% --- Executes during object creation, after setting all properties.
function GRAVAR_N_CreateFcn(hObject, eventdata, handles)
% hObject    handle to GRAVAR_N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ATUAL_N_Callback(hObject, eventdata, handles)
% hObject    handle to ATUAL_N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ATUAL_N as text
%        str2double(get(hObject,'String')) returns contents of ATUAL_N as a double


% --- Executes during object creation, after setting all properties.
function ATUAL_N_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ATUAL_N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function decimais_Callback(hObject, eventdata, handles)
% hObject    handle to decimais (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of decimais as text
%        str2double(get(hObject,'String')) returns contents of decimais as a double


% --- Executes during object creation, after setting all properties.
function decimais_CreateFcn(hObject, eventdata, handles)
% hObject    handle to decimais (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function separador_Callback(hObject, eventdata, handles)
% hObject    handle to separador (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of separador as text
%        str2double(get(hObject,'String')) returns contents of separador as a double


% --- Executes during object creation, after setting all properties.
function separador_CreateFcn(hObject, eventdata, handles)
% hObject    handle to separador (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in abrearq.
function abrearq_Callback(hObject, eventdata, handles)
% hObject    handle to abrearq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[file, path] = uiputfile('*.*');
set(handles.arquivo,'String',[path '' file]);



function maxiter_Callback(hObject, eventdata, handles)
% hObject    handle to maxiter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
S = get(hObject,'String');
if isempty(str2num(S))
    set(hObject,'string','0');
    warndlg('Input must be numerical');
end
% Hints: get(hObject,'String') returns contents of maxiter as text
%        str2double(get(hObject,'String')) returns contents of maxiter as a double


% --- Executes during object creation, after setting all properties.
function maxiter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to maxiter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tocleanfig.
function tocleanfig_Callback(hObject, eventdata, handles)
% hObject    handle to tocleanfig (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of tocleanfig
