event_inherited();

if (global.dunes_flag[24] != 0)
{
    instance_destroy();
    instance_create(x, y, obj_big_boss_backtrack);
}

if (global.dunes_flag[16] > 0)
    instance_destroy();

scene = 0;
can_talk = false;
