if (global.route == 3)
    message[0] = "* (A place to sleep.)";
else
    message[0] = "* (Weird... You haven't seen#  any cats around.)";

if (global.dunes_flag[20] == 5)
    instance_destroy();

if (global.dunes_flag[20] > 5)
    message[0] = "* (Mooch's throne.)";
