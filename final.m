function varargout = final(varargin)
% FINAL MATLAB code for final.fig
%      FINAL, by itself, creates a new FINAL or raises the existing
%      singleton*.
%
%      H = FINAL returns the handle to a new FINAL or the handle to
%      the existing singleton*.
%
%      FINAL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FINAL.M with the given input arguments.
%
%      FINAL('Property','Value',...) creates a new FINAL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before final_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to final_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help final

% Last Modified by GUIDE v2.5 26-Jul-2021 11:43:05

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @final_OpeningFcn, ...
                   'gui_OutputFcn',  @final_OutputFcn, ...
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


% --- Executes just before final is made visible.
function final_OpeningFcn(hObject, eventdata, handles, varargin)
handles.output = hObject;

set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.slider11, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text10, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text17, 'visible','off');
set(handles.edit6, 'visible','off');
set(handles.edit8, 'visible','off');
set(handles.edit7, 'visible','off');
set(handles.edit9, 'visible','off');
set(handles.edit10, 'visible','off');
set(handles.edit12, 'visible','off');
set(handles.axes3,'visible','off') %hide the current axes
set(get(handles.axes3,'children'),'visible','off') %hide the current axes contents

% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to final (see VARARGIN)

% Choose default command line output for final
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes final wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = final_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
global k;
k=0;
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.slider11, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text10, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text17, 'visible','off');
set(handles.edit6, 'visible','off');
set(handles.edit8, 'visible','off');
set(handles.edit7, 'visible','off');
set(handles.edit9, 'visible','off');
set(handles.edit10, 'visible','off');
set(handles.edit12, 'visible','off');
set(handles.axes3,'visible','off') %hide the current axes
set(get(handles.axes3,'children'),'visible','off') %hide the current axes contents
global im;
global m;
global re;
global p;
global t;
[f d]=uigetfile({'*.jpg;*.tif;*.png;*.gif'},'Select an Image');
filename=strcat(d,f);
im=imread(filename);
m=im;
re=im;
axes(handles.axes1);
imshow(im,[]);


% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.slider11, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text10, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text17, 'visible','off');
set(handles.edit6, 'visible','off');
set(handles.edit8, 'visible','off');
set(handles.edit7, 'visible','off');
set(handles.edit9, 'visible','off');
set(handles.edit10, 'visible','off');
set(handles.edit12, 'visible','off');
set(handles.axes3,'visible','off') %hide the current axes
set(get(handles.axes3,'children'),'visible','off') %hide the current axes contents
global im;
global m;
m=im;
m=rgb2gray(m);
axes(handles.axes1);
imshow(m,[]);

% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.slider11, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text10, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text17, 'visible','off');
set(handles.edit6, 'visible','off');
set(handles.edit8, 'visible','off');
set(handles.edit7, 'visible','off');
set(handles.edit9, 'visible','off');
set(handles.edit10, 'visible','off');
set(handles.edit12, 'visible','off');
set(handles.axes3,'visible','off') %hide the current axes
set(get(handles.axes3,'children'),'visible','off') %hide the current axes contents
global im;
global m;
if(ndims(im)>2)
    imm=rgb2gray(im);
else
    imm=im;
end
I_edge=edge(imm,'prewitt',0.11);
m=I_edge;
axes(handles.axes1);
imshow(m);


% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.slider11, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text10, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text17, 'visible','off');
set(handles.edit6, 'visible','off');
set(handles.edit8, 'visible','off');
set(handles.edit7, 'visible','off');
set(handles.edit9, 'visible','off');
set(handles.edit10, 'visible','off');
set(handles.edit12, 'visible','off');
set(handles.axes3,'visible','off') %hide the current axes
set(get(handles.axes3,'children'),'visible','off') %hide the current axes contents
global re;
global m;
m=re;
axes(handles.axes1);
imshow(m,[]);
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.slider11, 'visible','on');
set(handles.text13, 'visible','off');
set(handles.text10, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text17, 'visible','on');
set(handles.edit6, 'visible','off');
set(handles.edit8, 'visible','off');
set(handles.edit7, 'visible','off');
set(handles.edit9, 'visible','off');
set(handles.edit10, 'visible','off');
set(handles.edit12, 'visible','on');
set(handles.axes3,'visible','off') %hide the current axes
set(get(handles.axes3,'children'),'visible','off') 




% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.slider11, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text10, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text17, 'visible','off');
set(handles.edit6, 'visible','off');
set(handles.edit8, 'visible','off');
set(handles.edit7, 'visible','off');
set(handles.edit9, 'visible','off');
set(handles.edit10, 'visible','off');
set(handles.edit12, 'visible','off');
set(handles.axes3,'visible','on') %hide the current axes
set(get(handles.axes3,'children'),'visible','on') %hide the current axes contents
global p;
global t;
global m;
global im;
if(ndims(im)>2) 
    I_gray=rgb2gray(im);
else
    I_gray=im;
end
p=size(I_gray);
ele=numel(I_gray);
t=zeros(1,257);
% Histogram plotting
for k=1:p(1)
    for l=1:p(2)
   a=I_gray(k,l);
   t(a+1)=t(a+1)+1;
    end
end
for k=1:256;
    s(k)=floor(256.*sum(t(1:k))./(sum(t(1:256))));
end
% Output gray value
for i=1:(p(1)-1)
    for j=1:(p(2)-1)
        
        O_I=I_gray(i,j);
        M_I(i,j)=s(O_I+1);
       
    end
end

axes(handles.axes1);
imshow(M_I,[]);


% Histogram plotting
for k=1:(p(1)-1)
    for l=1:(p(2)-1)
   a=M_I(k,l);
  t(a+1)=t(a+1)+1;
    end
end
for k=1:(p(1)-1)
    for l=1:(p(2)-1)
        m(k,l,1)=M_I(k,l);
    end
end
for k=1:(p(1)-1)
    for l=1:(p(2)-1)
        m(k,l,2)=M_I(k,l);
    end
end
for k=1:(p(1)-1)
    for l=1:(p(2)-1)
        m(k,l,3)=M_I(k,l);
    end
end
L=t;

axes(handles.axes3);
bar(L,'b')




% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton7.
function pushbutton7_Callback(hObject, eventdata, handles)
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','on');
set(handles.slider9, 'visible','off');
set(handles.slider11, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text10, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text14, 'visible','on');
set(handles.text15, 'visible','off');
set(handles.text17, 'visible','off');
set(handles.edit6, 'visible','off');
set(handles.edit8, 'visible','off');
set(handles.edit7, 'visible','off');
set(handles.edit9, 'visible','on');
set(handles.edit10, 'visible','off');
set(handles.edit12, 'visible','off');
set(handles.axes3,'visible','on') %hide the current axes
set(get(handles.axes3,'children'),'visible','on')
% hObject    handle to pushbutton7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','on');
set(handles.slider11, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text10, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','on');
set(handles.text17, 'visible','off');
set(handles.edit6, 'visible','off');
set(handles.edit8, 'visible','off');
set(handles.edit7, 'visible','off');
set(handles.edit9, 'visible','off');
set(handles.edit10, 'visible','on');
set(handles.edit12, 'visible','off');
set(handles.axes3,'visible','on') %hide the current axes
set(get(handles.axes3,'children'),'visible','on') %hide the current axes contents
% hObject    handle to pushbutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton9.
function pushbutton9_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton10.
function pushbutton10_Callback(hObject, eventdata, handles)
set(handles.slider5, 'visible','on');
set(handles.slider6, 'visible','on');
set(handles.slider7, 'visible','on');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.slider11, 'visible','off');
set(handles.text13, 'visible','on');
set(handles.text10, 'visible','on');
set(handles.text12, 'visible','on');
set(handles.text11, 'visible','on');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text17, 'visible','off');
set(handles.edit6, 'visible','on');
set(handles.edit8, 'visible','on');
set(handles.edit7, 'visible','on');
set(handles.edit9, 'visible','off');
set(handles.edit10, 'visible','off');
set(handles.edit12, 'visible','off');
set(handles.axes3,'visible','off') %hide the current axes
set(get(handles.axes3,'children'),'visible','off') %hide the current axes contents
global im
global mm
mm=im;
global red_value;
global green_value;
global blue_value;
red_value=1;
green_value=1;
blue_value=1;

% hObject    handle to pushbutton10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton11.
function pushbutton11_Callback(hObject, eventdata, handles)
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.slider11, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text10, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text17, 'visible','off');
set(handles.edit6, 'visible','off');
set(handles.edit8, 'visible','off');
set(handles.edit7, 'visible','off');
set(handles.edit9, 'visible','off');
set(handles.edit10, 'visible','off');
set(handles.edit12, 'visible','off');
set(handles.axes3,'visible','off') %hide the current axes
set(get(handles.axes3,'children'),'visible','off') %hide the current axes contents
global im;
[f d]=uiputfile({'*.jpg;*.tif;*.png;*.gif'},'Save Image');
filename=strcat(d,f);
imwrite(im,filename);
guidata(hObject,handles);

% hObject    handle to pushbutton11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton13.
function pushbutton13_Callback(hObject, eventdata, handles)
set(handles.slider5, 'visible','off');
set(handles.slider6, 'visible','off');
set(handles.slider7, 'visible','off');
set(handles.slider8, 'visible','off');
set(handles.slider9, 'visible','off');
set(handles.slider11, 'visible','off');
set(handles.text13, 'visible','off');
set(handles.text10, 'visible','off');
set(handles.text12, 'visible','off');
set(handles.text11, 'visible','off');
set(handles.text14, 'visible','off');
set(handles.text15, 'visible','off');
set(handles.text17, 'visible','off');
set(handles.edit6, 'visible','off');
set(handles.edit8, 'visible','off');
set(handles.edit7, 'visible','off');
set(handles.edit9, 'visible','off');
set(handles.edit10, 'visible','off');
set(handles.edit12, 'visible','off');
set(handles.axes3,'visible','off') %hide the current axes
set(get(handles.axes3,'children'),'visible','off') %hide the current axes contents
global im;
global m;
global p;
global t;
im=m;
handles.I_gray=rgb2gray(im);
p=size(handles.I_gray);
ele=numel(handles.I_gray);
t=zeros(1,257);
% Histogram plotting
for k=1:p(1)
    for l=1:p(2)
   a=handles.I_gray(k,l);
   t(a+1)=t(a+1)+1;
    end
end
guidata(hObject,handles)
% hObject    handle to pushbutton13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



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



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
global mm;
global m;
global red_value;
global green_value;
global blue_value;
red_value=1+get(handles.slider5,'value');
set(handles.edit6,'String',red_value);
red=mm(:,:,1);
green=mm(:,:,2);
blue=mm(:,:,3);
z(:,:,1)=red_value.*red;
z(:,:,2)=green_value.*green;
z(:,:,3)=blue_value.*blue;
m=z;
axes(handles.axes1);
imshow(m);

% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
global mm;
global m;
global red_value;
global green_value;
global blue_value;
green_value=1+get(handles.slider6,'value');
set(handles.edit8,'String',green_value);
red=mm(:,:,1);
green=mm(:,:,2);
blue=mm(:,:,3);
z(:,:,1)=red_value.*red;
z(:,:,2)=green_value.*green;
z(:,:,3)=blue_value.*blue;
m=z;
axes(handles.axes1);
imshow(m);
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
global mm;
global m;
global red_value;
global green_value;
global blue_value;
blue_value=1+get(handles.slider7,'value');
set(handles.edit7,'String',blue_value);
red=mm(:,:,1);
green=mm(:,:,2);
blue=mm(:,:,3);
z(:,:,1)=red_value.*red;
z(:,:,2)=green_value.*green;
z(:,:,3)=blue_value.*blue;
m=z;
axes(handles.axes1);
imshow(m);
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
value_offset=get(handles.slider8,'Value');
set(handles.edit9,'String',value_offset);
global mm;
global im;
global m
if(ndims(im)>2)
    mm=rgb2gray(im);
else
    mm=im;
end
m= mm + value_offset;
axes(handles.axes1);
imshow(m,[]);
axes(handles.axes3);
imhist(m);

% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
value_gain=1 + get(handles.slider9,'Value');
set(handles.edit10,'String',value_gain);
global mm;
global im;
global m
if(ndims(im)>2)
    mm=rgb2gray(im);
else
    mm=im;
end
m= mm.*value_gain;
axes(handles.axes1);
imshow(m,[]);
axes(handles.axes3);
imhist(m);








% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider11_Callback(hObject, eventdata, handles)
global im;
global m;
me=(get(handles.slider11,'value')).^1+1;
set(handles.edit12,'String',me);
if(ndims(im)>2)
    Red=im(:,:,1);
    Green=im(:,:,2);
    Blue=im(:,:,3);
  
    [R C]=size(Red);
    R1=round(R.*(1-1./me)./2)+1
    R2=round(R.*(1+1./me)./2)
    C1=round(C.*(1-1./me)./2)+1
    C2=round(C.*(1+1./me)./2)
    I_C=Red(R1:R2,C1:C2);
    I_Z1=imresize(I_C,me);

    [R C]=size(Green);
    R1=round(R.*(1-1./me)./2)+1
    R2=round(R.*(1+1./me)./2)
    C1=round(C.*(1-1./me)./2)+1
    C2=round(C.*(1+1./me)./2)
    I_C=Green(R1:R2,C1:C2);
    I_Z2=imresize(I_C,me);

    [R C]=size(Blue);
    R1=round(R.*(1-1./me)./2)+1
    R2=round(R.*(1+1./me)./2)
    C1=round(C.*(1-1./me)./2)+1
    C2=round(C.*(1+1./me)./2)
    I_C=Blue(R1:R2,C1:C2);
    I_Z3=imresize(I_C,me);

    z(:,:,1)=I_Z1;
    z(:,:,2)=I_Z2;
    z(:,:,3)=I_Z3;
    axes(handles.axes1);
    imshow(z,[])
    m=z;
else
    img=im;
   [R C]=size(img);
   R1=round(R.*(1-1./me)./2)+1
   R2=round(R.*(1+1./me)./2)
   C1=round(C.*(1-1./me)./2)+1
   C2=round(C.*(1+1./me)./2)
   I_c=img(R1:R2,C1:C2);
   I_z=imresize(I_c,me);
   axes(handles.axes1);
   imshow(I_z,[]);
   m=I_z;
end


% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function slider11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
