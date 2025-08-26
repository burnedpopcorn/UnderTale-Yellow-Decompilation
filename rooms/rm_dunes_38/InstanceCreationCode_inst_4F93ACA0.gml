message[0] = "* (Two boxes of rubber pellets#  sit on the desk.)\t";

if (global.route != 3)
    message[1] = "* (Best leave them for someone#  who needs them.)";
else
    message[0] = "* (Just some rubber pellets.)";

if (global.dunes_flag[20] == 9)
    instance_destroy();
