//declarations
#include <linkbot.h>
CLinkbotI robot1;
CLinkbotI robot2;
CLinkbotIGroup group;
group.addRobot(robot2);
group.addRobot(robot1);
robot1.setJointSpeeds(130,NaN,90);
robot2.setJointSpeeds(68,NaN,91);
group.driveTime(9.3);
