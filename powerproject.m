function varargout = powerproject(varargin)
% POWERPROJECT M-file for powerproject.fig
%      POWERPROJECT, by itself, creates a new POWERPROJECT or raises the existing
%      singleton*.
%
%      H = POWERPROJECT returns the handle to a new POWERPROJECT or the handle to
%      the existing singleton*.
%
%      POWERPROJECT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in POWERPROJECT.M with the given input arguments.
%
%      POWERPROJECT('Property','Value',...) creates a new POWERPROJECT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before powerproject_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to powerproject_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help powerproject

% Last Modified by GUIDE v2.5 30-May-2015 18:09:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @powerproject_OpeningFcn, ...
    'gui_OutputFcn',  @powerproject_OutputFcn, ...
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


% --- Executes just before powerproject is made visible.
function powerproject_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to powerproject (see VARARGIN)

% Choose default command line output for powerproject
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes powerproject wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = powerproject_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function Voltageinput_Callback(hObject, eventdata, handles)
% hObject    handle to Voltageinput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Voltageinput as text
%        str2double(get(hObject,'String')) returns contents of Voltageinput as a double




% --- Executes during object creation, after setting all properties.
function Voltageinput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Voltageinput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MVAinput_Callback(hObject, eventdata, handles)
% hObject    handle to MVAinput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MVAinput as text
%        str2double(get(hObject,'String')) returns contents of MVAinput as a double


% --- Executes during object creation, after setting all properties.
function MVAinput_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MVAinput (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Busno_Callback(hObject, eventdata, handles)
% hObject    handle to Busno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Busno as text
%        str2double(get(hObject,'String')) returns contents of Busno as a double

Bus_No=str2num(get(handles.Busno,'string')); % getting No of Bus
input_number=Bus_No*(Bus_No-1)/2;
M=zeros(input_number,4);% Creating a matrix for line data


set(handles.Line_Data,'Data',M,'Visible','on');



% --- Executes during object creation, after setting all properties.

function Busno_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Busno (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function iteration_Callback(hObject, eventdata, handles)
% hObject    handle to iteration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of iteration as text
%        str2double(get(hObject,'String')) returns contents of iteration as a double


% --- Executes during object creation, after setting all properties.
function iteration_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iteration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PVbus_Callback(hObject, eventdata, handles)
% hObject    handle to PVbus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PVbus as text
%        str2double(get(hObject,'String')) returns contents of PVbus as a double

PVBus_No=str2num(get(handles.PVbus,'string')); % getting no of PV buse
B=zeros(PVBus_No,3);%creating table for pv bus
for k=1:PVBus_No
    B(k,1)=k+1;
end
Bus_No=str2num(get(handles.Busno,'string')); % getting No of Bus
No_loadbus=Bus_No -(PVBus_No+1);
L=zeros(No_loadbus,3);
line_no=1;
for bloop= PVBus_No+2:Bus_No
    
    L(line_no,1)=bloop;
    line_no=line_no+1;
end
set(handles.Loadbustable,'Data',L,'Visible','on');
set(handles.PVbustable,'Data',B,'Visible','on');



% --- Executes during object creation, after setting all properties.


function PVbus_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PVbus (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SwingMW_Callback(hObject, eventdata, handles)
% hObject    handle to SwingMW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SwingMW as text
%        str2double(get(hObject,'String')) returns contents of SwingMW as a double


% --- Executes during object creation, after setting all properties.
function SwingMW_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SwingMW (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SwingMVAR_Callback(hObject, eventdata, handles)
% hObject    handle to SwingMVAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SwingMVAR as text
%        str2double(get(hObject,'String')) returns contents of SwingMVAR as a double


% --- Executes during object creation, after setting all properties.
function SwingMVAR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SwingMVAR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function tolerance_Callback(hObject, eventdata, handles)
% hObject    handle to tolerance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tolerance as text
%        str2double(get(hObject,'String')) returns contents of tolerance as a double


% --- Executes during object creation, after setting all properties.
function tolerance_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tolerance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function Total_loss_Callback(hObject, eventdata, handles)
% hObject    handle to Total_loss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

function Total_loss_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Total_loss (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function iter_Callback(hObject, eventdata, handles)
% hObject    handle to iter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes during object creation, after setting all properties.
function iter_CreateFcn(hObject, eventdata, handles)
% hObject    handle to iter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

C=get(handles.PVbustable,'Data');
[m n]=size(C);
R=get(handles.Loadbustable,'Data');
[p q]=size(R);
%Do all the calculations (
%)

% assigning variables for functions argument
Bus_no=str2num(get(handles.Busno,'string')); % getting No of Bus
No_pvbus=str2num(get(handles.PVbus,'string')); % getting no of PV buse
No_loadbus=Bus_no-No_pvbus-1;

tol =(str2double(get(handles.tolerance,'string')))/100;  %tolerance value
iteration=str2num(get(handles.iter,'string'));  % user's desired iteration number

if isempty(tol)
    tol=0;
end

if isempty(iteration)
    iteration =0;
end


load_bus=get(handles.Loadbustable,'data');
PV_bus =get(handles.PVbustable,'data');
Line_data=get(handles.Line_Data,'data');

Base_voltage=str2num(get(handles.Voltageinput,'string'));
Base_MVA =str2num(get(handles.MVAinput,'string'));
Base_I = Base_MVA/(sqrt(3)*Base_voltage);  %current base


Line_limit=Bus_no*(Bus_no-1)/2; %number of row for input impidence
Y=zeros(Bus_no,Bus_no); %rectacne between buses
V=1;
P=2;
Q=3;
Bus_data = ones(3,Bus_no);  %main matrix containing power,reactive power and voltage values
Bus_data(Q,:)=0;
Bus_data(P,:)=0;
for bloop=1:Bus_no*(Bus_no-1)/2  %assignment of the values of buse reactencne
    if(Line_data(bloop,1)==0)  %condition for no input impidence
       Line_limit=bloop-1;
       break;
    end
   
    Y(Line_data(bloop,2),Line_data(bloop,1))=  -1/(Line_data(bloop,3)+i*Line_data(bloop,4));
    Y(Line_data(bloop,1),Line_data(bloop,2))=  -1/(Line_data(bloop,3)+i*Line_data(bloop,4));
  
end
for bloop=1:Bus_no
    Y(bloop,bloop)=-1*sum(Y(bloop,:));
end
   % successfully gain : Y
   Y
   
for bloop=1:No_loadbus

    Bus_data(P,load_bus(bloop,1))=load_bus(bloop,2)/Base_MVA;
    Bus_data(Q,load_bus(bloop,1))=load_bus(bloop,3)/Base_MVA;
end

for bloop=1:No_pvbus   
    Bus_data(V,PV_bus(bloop,1))=PV_bus(bloop,2)/Base_voltage;
    Bus_data(P,PV_bus(bloop,1))=PV_bus(bloop,3)/Base_MVA;
end
Bus_data
Bus_data = gauss_seidel(Bus_data,Y,No_pvbus,Bus_no,tol,iteration)  % gauss seidel function call

 Swing_MW=num2str(Bus_data(P,1)*Base_MVA);
 Swing_MVAR = num2str(Bus_data(Q,1)*Base_MVA);
 
 
   % swing bus result output
 set(handles.Swing_bus_panel,'Visible','on');
 set(handles.SwingMW,'string',Swing_MW,'Visible','on');
 set(handles.SwingMVAR,'string',Swing_MVAR,'Visible','on');
 
 
 %PV_bus result output
 set(handles.PV_bus_panel,'visible','on');
 PV_table=zeros(No_pvbus,4);
 
 for bloop=2:No_pvbus+1
     PV_table(bloop-1,1)=bloop;
     PV_table(bloop-1,2)=abs(Bus_data(V,bloop))*Base_voltage;
     PV_table(bloop-1,3)=(angle(Bus_data(V,bloop)))*180/pi;
     PV_table(bloop-1,4)=abs(Bus_data(Q,bloop))*Base_MVA;
 end
 
 set(handles.PVBusresult,'data',PV_table,'visible','on')
 
 
 %load voltage result output
 
 Load_table=zeros(Bus_no-No_pvbus-1,3);
  monika=No_pvbus+2;
 for chandler=1:(Bus_no - No_pvbus - 1)
     Load_table(chandler,1)=monika;
     Load_table(chandler,2)=(abs(Bus_data(V,monika))*Base_voltage);
     Load_table(chandler,3)=(angle(Bus_data(V,monika))*180/pi);
     monika=monika+1;
 end
 
 set(handles.Load_bus_panel,'Visible','on');
 set(handles.LoadBusresult,'data',Load_table,'visible','on');
 Loss_table=zeros(Line_limit,5);
 for joey=1:Line_limit
        
     Line_from = Line_data(joey,1);
     Line_to =  Line_data(joey,2);
     
    I_line = (Bus_data(V,Line_from)-Bus_data(V,Line_to))/(Line_data(joey,3)+i*Line_data(joey,4));
    Loss_table(joey,1)=Line_from;
    Loss_table(joey,2)=Line_to;
    Loss_table(joey,3)=abs(I_line);
    Loss_table(joey,4)=angle(I_line);
    Loss_table(joey,5)=Loss_table(joey,3)*Loss_table(joey,3)*Line_data(joey,3)*Base_MVA;
    Loss_table(joey,3)=Loss_table(joey,3)*Base_I;
 end
  Loss_total=sum(Loss_table(:,5));
 %end of line bus resutl
 
 
 
 
 
 
 set(handles.Power_loss,'Visible','on');
 set(handles.Total_sys_loss,'Visible','on');
 set(handles.Loss_table,'data',Loss_table,'visible','on');
 set(handles.Total_loss,'string',num2str(Loss_total),'visible','on');
 
 
 
 


%output visibility activation code
