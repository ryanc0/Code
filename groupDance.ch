#include <linkbot.h>
//Declarations
CLinkbotI robot1; //8866
CLinkbotI robot2; //F1TN
CLinkbotI robot3; //WMV4
CLinkbotI robot4; //KQP1
CLinkbotIGroup group;

//Initialization
group.addRobot(robot1);
group.addRobot(robot2);
group.addRobot(robot3);
group.addRobot(robot4);

//Termination
group.turnLeft(180, 2, 3.69);
group.driveDistance(6, 2);
group.setLEDColor("purple");
group.turnLeft(360, 2, 3.69);
group.driveDistance(-6, 2);
robot1.turnRight(90, 2, 3.69);
sleep(1);
robot2.turnRight(180, 2, 3.69);
sleep(1);
robot3.turnRight(270, 2, 3.69);
sleep(1);
robot4.turnRight(360, 2, 3.69);
group.driveDistance(-3, 2);
group.setLEDColor("green");
group.driveDistance(3, 2);
robot1.turnRight(270, 2, 3.69);
sleep(1);
robot2.turnRight(180, 2, 3.69);
sleep(1);
robot3.turnRight(90, 2, 3.69);
sleep(1);
robot4.turnRight(360, 2, 3.69);

