if (global.route == 3)
    message[0] = "* (A place to sleep.)";
else
    message[0] = "* (You push the hammock.#  Its sway is hypnotizing.)";

if (global.dunes_flag[20] == 5)
    instance_destroy();