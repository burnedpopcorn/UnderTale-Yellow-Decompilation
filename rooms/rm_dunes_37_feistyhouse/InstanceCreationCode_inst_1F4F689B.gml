if (global.route == 3)
    message[0] = "* (A place to sleep.)";
else
    message[0] = "* (A firm sleeping bag sits#  in the corner, threatening#  to restrict free sleepers.)";

if (global.dunes_flag[20] == 5)
    instance_destroy();
