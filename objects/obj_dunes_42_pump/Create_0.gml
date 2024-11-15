event_inherited();
message[0] = "* (You attempt to turn the pump#  on but the handle won't budge.)";

if (global.route == 3)
    message[0] = "* (A water pump.)";

depth = -y;
image_speed = 0;
