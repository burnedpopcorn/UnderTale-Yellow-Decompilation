function scr_cutscene_start()
{
    global.cutscene = true;
    obj_pl.state = scr_frozen_state;
    obj_pl.image_index = 0;
    obj_pl.image_speed = 0;
}