% Mortal Kombat Theme Song

clear,clc; 
t = (0:.000125:.24);

Al = sin(2*pi*220*t);   % The 'l' attached to A is to show it's a note below middle C.
A = sin(2*pi*440*t);    % The A note.
C = sin(2*pi*523.25*t); % The C Note.
D = sin(2*pi*587.33*t); % The D Note.
E = sin(2*pi*659.26*t); % The E Note.
midc = sin(2*pi*261.6*t); % Middle C note.
G = sin(2*pi*783.99*t); % The G note.
Gl = sin(2*pi*196*t); % The 'l' attached to 'G' is to show it is below middle C.
B = sin(2*pi*493.88*t); % The B note.
F = sin(2*pi*349.23*t); % The F note.
Fl = sin(2*pi*174.61*t); % The 'l' attached to 'F' is to show it is below middle C.
Rs = sin(2*pi*000*t); % I use this for a rest note.
Dl = sin(2*pi*293.66*t); % The 'l' attached to the 'D' is to show it is below middle c.
Gs = sin(2*pi*392*t); %This G note was not below middle c but not a higher not either. It's only a few notes above middle c.
Bl = sin(2*pi*246.94*t); % The 'l' attached to the 'B' is to show it is below middle c.
El = sin(2*pi*164.81*t); % Same condition as above.
As = sin(2*pi*466.16*t); % The 's' stands for a # note.



% These are notes that needs to be played at the same time.
% Using 'Var' = ('x' + 'y') I was able to do this.
AlA = (Al + A);
DAl = (D + Al);
Cmidc = (C + midc);
GGl = (G + Gl);
CGl = (C + Gl);
FFl = (F + Fl);
BFl = (B + Fl);
EAl = (E + Al);
DlGl = (Dl + Gl);
Gsmidc = (Gs + midc);
BlEl = (Bl + El);



% This is where I create my 'measures' and lines. 
% When reading music, each measure has the notes it needs to play. I simply
% organized it by putting the correct notes in the correct line. Some lines
% need to be repeated or skipped, which is why some lines are very short or some very long. 
line1 = [AlA,A,C,A,D,A,E,DAl,Cmidc,C,E,C,G,C,E,Cmidc,GGl,G,B,G,C,G,D,CGl];
line2 = [FFl,F,A,F,B,F,C,BFl];
line3 = [FFl,F,A,F,B,F,C,BFl];
line4 = [AlA,A,C,A,D,A,E,DAl,Cmidc,C,E,C,G,C,E,Cmidc,GGl,G,B,G,C,G,D,CGl,FFl,F,A,F,B,F,C,BFl,AlA,A,C,A,D,A,E,DAl,Cmidc,C,E,C,G,C,E,Cmidc,GGl,B,G,C,G,D,CGl];
line5 = [FFl,F,A,F,B,F,C,BFl];
line6 = [EAl,Al,Al,EAl,EAl,Rs,EAl,EAl,Rs,EAl,EAl,Rs,EAl,EAl,DlGl,DlGl,Gsmidc,Gsmidc,EAl,EAl,Rs,EAl,EAl,Rs,EAl,EAl,Rs,EAl,EAl,DlGl,DlGl,BlEl,BlEl,EAl,EAl,Rs,EAl,EAl,Rs,EAl,EAl,Rs,EAl,EAl,Rs,DlGl,DlGl,Gsmidc,Gsmidc,EAl,EAl,Rs,EAl,EAl,Rs,EAl,EAl,Rs,EAl,EAl,Rs,EAl,EAl,EAl];
line7 = [EAl,EAl,Rs,EAl,EAl,Rs,EAl,EAl,Rs,EAl,EAl,Rs,DlGl,DlGl,Gsmidc,Gsmidc,EAl,EAl,Rs,EAl,Rs,EAl,Rs,EAl,EAl,Rs,DlGl,DlGl,BlEl,BlEl,EAl,EAl,Rs,EAl,EAl,EAl,Rs,EAl,EAl,Rs,DlGl,DlGl,Gsmidc,Gsmidc,EAl,EAl,Rs,EAl,EAl,Rs,EAl,EAl,Rs,EAl,EAl,EAl];
% 'line8_lengths' is what I had to create in order for 'line8' to be played faster than the other lines. The '0.5' is half-second measure so all of the notes in line8 will be played at that speed, which is faster than my other notes. 
line8_lengths = [0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5,0.5];
% Since line8 needs to be faster, each note needs to be multiplied by the
% time lenght in 'line8_lenghts for the correct speed.
line8 = [EAl(1:length(EAl)*line8_lengths(1)),EAl(1:length(EAl)*line8_lengths(2)),EAl(1:length(EAl)*line8_lengths(3)),EAl(1:length(EAl)*line8_lengths(4)),EAl(1:length(EAl)*line8_lengths(6)),EAl(1:length(EAl)*line8_lengths(7)),Rs,EAl(1:length(EAl)*line8_lengths(8)),EAl(1:length(EAl)*line8_lengths(9)),Rs,EAl(1:length(EAl)*line8_lengths(10)),EAl(1:length(EAl)*line8_lengths(11)),EAl(1:length(EAl)*line8_lengths(12)),EAl(1:length(EAl)*line8_lengths(13)),DlGl(1:length(DlGl)*line8_lengths(14)),DlGl(1:length(DlGl)*line8_lengths(15)),Gsmidc(1:length(Gsmidc)*line8_lengths(16)),Gsmidc(1:length(Gsmidc)*line8_lengths(17)),EAl(1:length(EAl)*line8_lengths(18)),EAl(1:length(EAl)*line8_lengths(19)),EAl(1:length(EAl)*line8_lengths(20)),EAl(1:length(EAl)*line8_lengths(21)),Rs,EAl(1:length(EAl)*line8_lengths(22)),EAl(1:length(EAl)*line8_lengths(23)),EAl(1:length(EAl)*line8_lengths(24)),EAl(1:length(EAl)*line8_lengths(25)),Rs,EAl(1:length(EAl)*line8_lengths(26)),EAl(1:length(EAl)*line8_lengths(27)),EAl(1:length(EAl)*line8_lengths(28)),EAl(1:length(EAl)*line8_lengths(29)),Rs,EAl(1:length(EAl)*line8_lengths(30)),EAl(1:length(EAl)*line8_lengths(31)),EAl(1:length(EAl)*line8_lengths(32)),EAl(1:length(EAl)*line8_lengths(33)),DlGl(1:length(DlGl)*line8_lengths(34)),DlGl(1:length(DlGl)*line8_lengths(35)),BlEl(1:length(BlEl)*line8_lengths(36)),BlEl(1:length(BlEl)*line8_lengths(37)),EAl(1:length(EAl)*line8_lengths(38)),EAl(1:length(EAl)*line8_lengths(39)),EAl(1:length(EAl)*line8_lengths(40)),EAl(1:length(EAl)*line8_lengths(41)),Rs,EAl(1:length(EAl)*line8_lengths(42)),EAl(1:length(EAl)*line8_lengths(43)),EAl(1:length(EAl)*line8_lengths(44)),EAl(1:length(EAl)*line8_lengths(45)),Rs,EAl(1:length(EAl)*line8_lengths(46)),EAl(1:length(EAl)*line8_lengths(47)),EAl(1:length(EAl)*line8_lengths(48)),EAl(1:length(EAl)*line8_lengths(49)),Rs,DlGl(1:length(DlGl)*line8_lengths(50)),DlGl(1:length(DlGl)*line8_lengths(51)),Gsmidc(1:length(Gsmidc)*line8_lengths(52)),Gsmidc(1:length(Gsmidc)*line8_lengths(53)),EAl(1:length(EAl)*line8_lengths(54)),EAl(1:length(EAl)*line8_lengths(55)),EAl(1:length(EAl)*line8_lengths(56)),EAl(1:length(EAl)*line8_lengths(57)),Rs,EAl(1:length(EAl)*line8_lengths(58)),EAl(1:length(EAl)*line8_lengths(59)),EAl(1:length(EAl)*line8_lengths(60)),EAl(1:length(EAl)*line8_lengths(61)),Rs,EAl(1:length(EAl)*line8_lengths(62)),EAl(1:length(EAl)*line8_lengths(63)),EAl(1:length(EAl)*line8_lengths(64)),EAl(1:length(EAl)*line8_lengths(65))]; 
line9 = [A,E,A,C,A,As,A,C,A,B,A,Gs,A,E,A,C,A,As,A,C,A,B,A,Gs,A,E,A,C,A,As,A,C,A,B,A,Gs,A,E,A,C,As,A,A,A,A,A,E,A,C,A,As,A,C,A,B,A,G,A,E,A,C,A,As,A,C,A,B,A,Gs,A,E,A,C,A,As,A,C,A,B,A,Gs,A,E,A,C,A,As,A,A,A,A];



% This is where I create my actual song. I organize my lines in the correct
% order according to the sheet music I used for the actual song. 
% To test my lines are working properly, I went and inserted only one line
% at a time to hear if the notes are correct. 
song  =  [line1,line2,line1,line3,line4,line5,line4,line5,line6,line8,line8,line9];
soundsc(song);
