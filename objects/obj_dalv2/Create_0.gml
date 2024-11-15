script_execute(scr_depth, 0, 0, 0, 0, 0);
default_x_dalvshouse = 140;
default_y_dalvshouse = 60;
default_x_dalvroomhall = 130;
default_y_dalvroomhall = 120;
script_execute(scr_dalv_determine_destination);
upsprite = cdalv_up;
downsprite = cdalv_down;
leftsprite = cdalv_left;
rightsprite = cdalv_right;
image_speed = 0;
waiter = 0;
dalv_talk_waiter = 0;
fadeout = false;
fadein = false;
spritelock = true;
npc_walking = false;
going_through_door = false;
no_loop_room_specific_walking = false;
no_loop_dalv_hallway = false;
no_loop_autowalk = false;

if (global.flag[17] == 2 || global.flag[17] == 4)
    instance_destroy();

if (room == rm_dalvhallway && obj_pl.player_mode != "DalvExit")
    instance_destroy();
