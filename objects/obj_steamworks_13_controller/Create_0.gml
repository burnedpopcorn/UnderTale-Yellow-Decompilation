if (global.sworks_flag[3] == 2)
{
    instance_destroy();
    exit;
}

if (global.route == 1)
{
    instance_create(x, y, obj_steamworks_13_controller_neutral);
    instance_destroy();
    exit;
}

scene = 0;
cutscene_timer = 0;
instance_create(85, 150, obj_ceroba_npc);
obj_ceroba_npc.npc_direction = "down";
robot_part_current = 0;
robot_part[0] = 0;
robot_part[1] = 0;
robot_part[2] = 0;
robot_part[3] = 0;
robot_part_no_loop = false;
robot_part_xx[0] = 88;
robot_part_yy[0] = 160;
robot_part_xx[1] = 128;
robot_part_yy[1] = 160;
robot_part_xx[2] = 88;
robot_part_yy[2] = 190;
robot_part_xx[3] = 128;
robot_part_yy[3] = 190;

if (global.sworks_flag[3] == 1)
{
    obj_ceroba_npc.x = 105;
    obj_ceroba_npc.y = 125;
    scene = 4;
    exit;
}

obj_pl.x = 135;
obj_pl.y = 150;
obj_pl.image_alpha = 1;
obj_pl.image_angle = 0;
obj_pl.direction = 180;
scr_cutscene_start();
instance_destroy(global.party_member);
global.party_member = -4;
