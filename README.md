# Code
//declarations
#include <linkbot.h>
#put all robots into group
CLinkbotI robot1;
CLinkbotI robot2;
CLinkbotIGroup group;
group.addRobot(robot2);
group.addRobot(robot1);
#sets speed of robots and move them
robot1.setJointSpeeds(130,NaN,90);
robot2.setJointSpeeds(68,NaN,91);
group.driveTime(9.3);
# code 2
//Choose your won adventure story
//declarations
#include <chplot.h>
CPlot plot;
int b = 0;
int n = randint(0,10);
int m = randint(5,10);
string_t x;
string_t friend1,friend2;
int firstEnding, secondEnding, thirdEnding;

//Introduction
void introduction(){
    printf("You are about to embark on an \
epic journey for the\n fortune of a lifetime.\n\n");
    sleep(b);
    printf("Your decisions in this story \
will effect the ending\n and whether \
you find treasure or not.\n\n");
    sleep(b);
    printf("This journey is far to \
dangerous to embark\n on your own so \
you decide to take your best friend \
with you\n\n");
    sleep(b);
    printf("What is his name?\n\n");
    scanf("%s", &friend1);
    sleep(b);
    printf("You trust %s with your life \
but you also decide\n to bring one more \
friend as well for\n safe measures\n\n", friend1);
    sleep(b);
    printf("What is his name?\n");
    scanf("%s", &friend2);
    sleep(b);
    printf("%s is strong but not as trustworthy as %s.\n\n", friend2, friend1);
    sleep(b);
    printf("Your friends are letting you pick where you want \
go.\n You have 3 choices: You can go to the lake, mountain, \
or the desert.\n\n");
    sleep(b);
    //string_t x;
    scanf("%s",&x);
    sleep(b);
    while(x!="lake"&& x!="Lake"&& x!="mountain"&& x!="Mountain"&& x!="desert"&& x!="Desert"){
        printf("sorry but we couldn't understand what you typed,\n please try typing how it was mentioned above^^\n");
        scanf("%s", &x);
    }
}
//option1();
void option1(){
    printf("You chose to go to the lake,\n hoping treasure will await under the surface.");
    sleep(b);
    printf("You find a lake, obviously, and see an x made of rocks towards the middle of it.\n %s takes the shovel and swims for the x. You see a car pulling up on the other side.\n \
You have no clue who they are.\nDo you:\n1. Take %s and run away\n2. Confront %s and try to get the treasure\n3. Hide and try to see what the vehicle does.\n", friend2, friend1, friend2);
    sleep(b);
    scanf("%d", &firstEnding);
    while(firstEnding!=1&&firstEnding!=2&&firstEnding!=3){
        printf("sorry but we do not understand what you typed, please type 1, 2, or 3\n");
        scanf("%d", &firstEnding);
    }
}
//end1
void end1(){
    printf("You and %s ran away. You didn't get any treasure but you\n both got to live another day. A couple months later, %s was caught and arrested for stealing treasure.\n'Better him than us,'you say.%s agrees.\n",friend2, friend1);
}
//end2
void end2(){
    printf("You decided to confront %s and try to get the treasure. You dive straight into the\nlake, %s keeps watch on the vehicle in the distance.\n\
You are two feet away from %s as you reach for the shovel. %s turns and swings the shovel at you.\n You fall and find the shovel against your neck. 'Sorry, but it was either you or me' %s says.\n\
Just as you were about to give up, %s comes in from the back and pushes him down.\n You get up, heavily exhausted, to find a bunch of guns pointed at you and your friends.\
'Put your hands above your head,'the police say.\n You and your friends were sentenced for life.",friend2, friend1, friend2,friend2,friend2,friend1);
}
//end3
void end3(){
    printf("You decided to be tactical and hide. The vehicle pulls up and out comes the police.\n 'Put your hands in the air'\
they say. %s puts his hands behind his head.\n The police take him away. You and %s wait for everyone to clear out. When they\
finally\n cleared out you and %s went back to the x and got the treasure for yourselves.",friend2,friend1,friend1);
}
//option();
void option2(){
    printf("You chose to go to the mountain.\n It will be a dangerous journey but the rewards can\n be life changing.\
You and your friends start climbing up the mountain.\nAll of a sudden you see %d rocks rolling down right towards you.\n\
Do you:\n1. Try to outrun the rocks\n2. Stay and pray the rocks bounce over you\n3.Run towards the rocks, NO FEAR!\n\n", n);
    sleep(b);
    scanf("%d", &secondEnding);
    while(secondEnding!=1&&secondEnding!=2&&secondEnding!=3){
        printf("sorry but we do not understand what you typed, please type 1, 2, or 3\n");
        scanf("%d", &secondEnding);
    }
}
//end4
void end4(){
    printf("You decided to try and outrun the rocks. I have no clue what you were thinking.\n\
But you decided for some reason that running from them was the best opiton.\nYou and your friends started running,\
praying that a miracle will occur and you will live.\nThe rocks are coming closer and closer until the point where you couldn't\
feel anything.\nSurprise! You are dead. What did you expect?");
}
//end5
void end5(){
    printf("You decided to stay still and pray the rocks don't hit you. That is a very brave choice.\n\
You and your friends stand still. As you watch the rocks\n head straight towards you, you all feel stiff, unsure, uneasy.\
The rocks are yards away from you but, OMG, they actually bounced over you.\n One rock barely hit %s but he\
 can sustain the injury. You bring %s to the hospital\n to get checked up. You didn't get any treasure, but you all made it\
out alive.", friend1, friend1);
}
//end6
void end6(){
    printf("You picked the most stupid of the three choices. You actually chose to run towards the rocks.\n\
Your friends are giving you the death stare, but they follow your lead as you charge straight for the rocks.\n\
They get bigger and bigger, more intimidating each second that passes. Right when you though all hope was lost,\n\
you found a tiny hole just in front of you. You tell your friends what\n you found and they follow you down.\
You and your friends survived the rocks and found the treasure.");
}

//option3();
void option3(){
    printf("You chose to go to the desert.\n Tough conditions but can hold many ancient artifacts worth fortunes.\
You and your friends bring %d ounces of water with you,\nnot sure if it will be enough but you are so limited on what\
 you can bring. You all started walking when all of a sudden,\n%s falls to the floor. He seems unconscious, probaby dehydrated.\
Do you:\n1. Carry %s with you and continue on\n2. Try to head back and save %s\n3. Try and find shelter and crash there for a bit\n",m,friend1,friend1,friend1);
    sleep(b);
    scanf("%d",&thirdEnding);
    while(thirdEnding!=1&&thirdEnding!=2&&thirdEnding!=3){
        printf("sorry but we do not understand what you typed, please type 1, 2, or 3\n");
        scanf("%d", &thirdEnding);
    }
}
//end7
void end7(){
    printf("You decided to carry %s and continue with the journey.\n He proved to be a lot heavier than you thought.\
All of a sudden a sandstorm catches you by surprise.\n You know that %s is dying quickly and you all won't make it at this rate.\
%s tells you he is going ahead to find shelter.\n He runs off. %s was never seen again as you and your friend die",friend1,friend2,friend2);
}
//end8
void end8(){
    printf("You decided to try and head back to save %s. As you start heading back you a shadow\nright behind you with a knife.\
It is %s. You immediately drop %s and he stabs the knife through your hand.\n You scream in pain. %s attempts to stab you again.\
You were ready this time, knife drawn in your left hand.\n You stab %s through the chest. As he falls you get %s and run for the nearest hospital\
You and %s barely make it out alive.",friend1,friend2,friend2,friend2,friend1,friend1);
}
//end9
void end9(){
    printf("You decided to try and find shelter. Your friends agree on your decision and start scouting for some sort\
of building. %s finds one and you all crash there for the night. %s feels much better that next day and you guys decide\
to continue searching for treasure. You find a temple and in it is the loot you all dreamed of.",friend2, friend1);
}
//Good ending
void goodEnding(){
    plot.axisRange(PLOT_AXIS_X, 0,10);
    plot.axisRange(PLOT_AXIS_Y, 0,10);
    plot.strokeColor("blue");
    plot.fillColor("blue");
    plot.rectangle(0,0,10,10);
    plot.strokeColor("yellow");
    plot.fillColor("yellow");
    plot.circle(5,5,2.5);
    plot.strokeWidth(5);
    plot.fillColor("black");
    plot.strokeColor("black");
    plot.circle(4,6,.2);
    plot.circle(6,6,.2);
    plot.arc(5,3.5,1,-180,0);
    plot.plotting();
}
//medium ending
void mediumEnding(){
    plot.axisRange(PLOT_AXIS_X, 0,10);
    plot.axisRange(PLOT_AXIS_Y, 0,10);
    plot.fillColor("blue");
    plot.strokeColor("blue");
    plot.rectangle(0,0,10,10);
    plot.strokeColor("yellow");
    plot.fillColor("yellow");
    plot.circle(5,5,2.5);
    plot.strokeWidth(5);
    plot.fillColor("black");
    plot.strokeColor("black");
    plot.circle(4,6,.2);
    plot.circle(6,6,.2);
    plot.line(4,4,6,4);
    plot.plotting();
}
//bad ending
void badEnding(){
    plot.axisRange(PLOT_AXIS_X, 0,10);
    plot.axisRange(PLOT_AXIS_Y, 0,10);
    plot.fillColor("blue");
    plot.strokeColor("blue");
    plot.rectangle(0,0,10,10);
    plot.strokeColor("yellow");
    plot.fillColor("yellow");
    plot.circle(5,5,2.5);
    plot.strokeWidth(5);
    plot.fillColor("black");
    plot.strokeColor("black");
    plot.circle(4,6,.2);
    plot.circle(6,6,.2);
    plot.arc(5,3,1,0,180);
    plot.plotting();
}
//main story
int main(){
    introduction();
    if(x=="lake"||x=="Lake"){
        option1();
        if(firstEnding==1){
            end1();
            sleep(b);
            mediumEnding();
        }
        if(firstEnding==2){
            end2();
            sleep(b);
            badEnding();
        }
        if(firstEnding==3){
            end3();
            sleep(b);
            goodEnding();
        }
    }
    if(x=="mountain"|| x=="Mountain"){
        option2();
        if(secondEnding==1){
            end4();
            sleep(b);
            badEnding();
        }
        if(secondEnding==2){
            end5();
            sleep(b);
            mediumEnding();
        }
        if(secondEnding==3){
            end6();
            sleep(b);
            goodEnding();
        }
    }
    if(x=="desert"||x=="Desert"){
        option3();
        if(thirdEnding==1){
            end7();
            sleep(b);
            badEnding();
        }
        if(thirdEnding==2){
            end8();
            sleep(b);
            mediumEnding();
        }
        if(thirdEnding==3){
            end9();
            sleep(b);
            goodEnding();
        }
    }
}

