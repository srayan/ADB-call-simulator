ADB-call-simulator
==================

Simulating calls using ADB shell on Android phones. Front end design using PhP and HTML; deployed on an Apache web server

Works on Android phones configured to receive commands over the ADB shell using the TCP IP port.
Tested on the Google Nexus 4

PROJECT OBJECTIVE: 
The main objective of the project is to facilitate VOIP connection in8between two 
smartphones, through a browser on a remote computer.  
The first aim of the project is to develop a wireless connection to an android8based 
smartphone using a browser on the user’s computer. 
The second aim of the project is to issue instructions by inputting necessary data 
into the computer browser, which in turn are directed to the cellular device, thus 
facilitating call operations. 
The final aim of the project is to perform conversation from the computer browser 
to the called number and terminating the conversation. 
 

DESCRIPTION OF APPLICATION: 
The front8end design is done using HTML and Java Script and the backend is running 
on PHP using an Apache server. 
The user interface is accessible to the user through a web browser. Through this 
web browser based application, the user will be able to interact with their 
smartphones.  
For the user the point of contact remains the web8based application. The user can 
directly input the name of the user they want to call, into the web8based browser 
application. This information will be relayed to the smartphone over the wireless 
network.  
Additionally the user can receive or reject an incoming call. Users can also 
enable/disable the speaker controls on their phone from the UI. 
Once the smartphone receives the specified set of instructions it will process the 
activity. Thus the operation will be completed. 


PROTOCOLS USED FOR COMMUNICATION:
The main protocols that were involved in the development of the project are the SIP 
(Session initiation protocol) and the ADB (Android debugger bridge). With the help 
of the SIP we will be able to establish a wireless connection that will facilitate VOIP 
telephony.  
 
The ADB protocol is implemented using the bash shell scripting. With the processing 
of the bash scripts we will be able to invoke commands to the ADB shell and this in 
turn will help perform operations on the smartphone. 
 
 
IMPLEMENTATION OF PROTOCOLS:
Implementation details regarding ADB: 
The Android Device Bridge is enabled to keep track of all the android devices that 
are connected to the computer as well as emulator instances that are running on the 
computer. It also allows us to implement various control commands services. 
 
The major components that are involved internally are: 
ADB server = This is a background process that runs on the host machine. Its 
purpose is to establish and facilitate a connection with the Android device and 
enable us to implement activities by issuing commands. 
   
ADB daemon (adbd) = This is a background process, which runs on Android device. 
Its purpose is to connect to the ADB server and provide a few services for clients 
that run on the host. The device is considered online only when the server is able to 
communicate with this service on the device. 
  
ADB command=line client = The 'adb' command8line program is used to run adb 
commands from a shell or a script. It first tries to locate the ADB server on the host 
machine, and will start one automatically if none is found. Then, the client sends its 
service requests to the ADB server.  
 
 
SCOPE OF IMPROVEMENT: 
Development of wireless access to the cellular device from any network is the first 
priority (i.e. the phone can be on a Wi8Fi / 3G / 4G network in any geography, while 
the user is accessing it from an outside network at Office) 
 
Right now the software developed by us will only work on Android OS 4.2. We need 
to make the software backwards compatible. Currently the audio streaming is being 
handled by the phone itself, we need to enable the computer web based application 
to handle this entirely. 
 
 
CHALLENGES FACED AND SOLUTION IMPLEMENTED:
The project was done in a sequential manner. We first approached the objective 
with a wired connection, where we were able to issue commands and implement 
functions over a wired USB connection. Gradually we were able to develop a 
wireless approach through a TCP/IP connection port, which allowed us to issue 
commands to the smartphone device over the wireless network.  
 
Controlling the phone over a wired connection. We tried to implement both the 
server and client on the same machine, with an additional service running on the 
device. This allowed us to issue an initial request to the device in order to know the 
status of the device. 
  
Once the first part was up and running we implemented the entire operations 
wirelessly. We tracked the IP Address of the smartphone device and made the 
device listen to a dedicated port number (5555) for requests being issued by the 
computer. Now we sent operation requests and commands from the computer over 
the specified IP Address and port number of the device. 
  
Thirdly we implemented the entire operation control through a browser. 
Firstly we used the Apache server platform on which we built web applications 
using javascript and php, and then mapped the user interface to the shell script 
running in the background. Thus we were able to handle requests from the 
computer  
