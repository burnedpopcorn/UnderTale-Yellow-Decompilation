if (global.sworks_flag[0] > 1 || global.route != 2)
{
    instance_destroy();
    exit;
}

scene = 0;
instance_create(330, 470, obj_ceroba_npc);
