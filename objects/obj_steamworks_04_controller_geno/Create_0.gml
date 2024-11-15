cutscene_timer = 0;
scene = 0;

if (global.sworks_flag[0] == 0)
{
}

if (global.sworks_flag[1] == 3)
{
    __background_set(e__BG.Index, 0, 2566);
    obj_pl.image_alpha = 0;
    scr_cutscene_start();
}
else if (global.sworks_flag[1] >= 4)
{
    __background_set(e__BG.Index, 0, 2566);
}
