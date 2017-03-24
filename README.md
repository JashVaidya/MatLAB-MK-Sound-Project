# MatLAB-MK-Sound-Project

If you'd like to see this program in action, you can watch it here. Make sure your sound is on!
https://vid.me/tC7A
I've also included the code in this project and instructions on how to create your own song below.

In this MatLAB program, the goal is that you can make any song with frequencies.
I will say that before this project, I had no music experience to begin with. 
However, doing this project lead me to learn a little bit of sheet music and how notes, bars, etc. works. 
(By no means I am great at it, but learning the basic concepts goes a long way)

I did not know how to read sheet music or play any instruments. This can be done without prior music experience.

In short, I've created a basic format in how I created the song in MatLAB.
There are many approaches in how it can be done, but for ease of use and simplicity, this turned out the best for me.

1. Create the notes. 
   In an instrument like the piano, there is a reference point known as middle C. I created my notes based around the note middle C.
   So in my program, if you see something that says Al, it's the A note below middle C (l). If there is not an 'l' attached to the note,
   then it is just a note above middle C. 'S' also stands for # (sharp).   
   Each note has a frequency. A frequency can be created inside of MatLAB with a line like this:
   t = (0:.000125:.24); Where t is the time
   Al = sin(2*pi*220*t); Like above, we are creating the A note below Middle C.
   Using this construct, you want to create all the notes in the song you want to create.
  
2. Create the notes that need to be played at the same time.
    Just like in the first step where we create a single note, we're now going to create two notes that can be played at the same time.
    If I want to play an A note below middle C and an A note above middle C at the same time then I create a new note called:
    AlA. In this new note you want add each note to each other. Then you get: 
    AlA = (Al + A); 
    You create this new note for any combination of notes you want. 
  
3. Create 'measures' and lines. 
    When reading music, each measure has the notes it needs to play. You want to organize it by putting the correct notes in the correct line. 
    Some lines need to be repeated or skipped, which is why some lines are very short or some very long.
    So a line could look like this: 
    line2 = [FFl,F,A,F,B,F,C,BFl];
    
  
4. Create the song.
    This is where you create the actual song. I organized the lines in the correct order according to the sheet music for the actual song. 
    To test my lines are working properly, I went and inserted only one line at a time to hear if the notes are correct. 
    The song will be constructed like this:
    song  =  [line1,line2,line1,line3,line4,line5,line4,line5,line6,line8,line8,line9];
    And to play it, you just call it like this:
    soundsc(song);
