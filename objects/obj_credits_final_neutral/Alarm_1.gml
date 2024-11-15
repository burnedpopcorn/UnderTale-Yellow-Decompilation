if (global.hotland_flag[10] == 0)
{
    game_end();
    instance_destroy();
}
else
{
    instance_create(x, y, obj_kill_ceroba_ending_flowey_cutscene);
    instance_destroy();
}
