if (global.route == 3)
    message[0] = "* (A place to sleep.)";
else
    message[0] = "* (There's a hole in the floor.#  How comfy!)";

if (global.dunes_flag[20] == 5)
    instance_destroy();
