script_execute(scr_depth, 0, 0, 0, 0, 0);
timer = 0;
direction = 0;
upsprite = spr_dalvhup;
downsprite = spr_dalvhdown;
leftsprite = spr_dalvhleft;
rightsprite = spr_dalvright;
image_speed = 0;
waiter = 0;
fadeout = false;
hood = true;
spritelock = true;
door_open_alarm_counter = 0;

if ((global.flag[17] == 1 && room == rm_darkruins_18) || room == rm_dalvshouse)
{
    direction = 270;
    sprite_index = spr_hoodoff;
    hood = false;
}

fade_kill = false;

if (room == rm_darkruins_18 && global.flag[17] != 0 && global.flag[27] == 0)
    obj_pl.y = 320;

if (room == rm_dalvshouse && (global.flag[28] == 1 || global.flag[17] == 4 || global.flag[17] == 2))
{
    instance_destroy();
    exit;
}
