if (instance_exists(obj_savefl))
{
    obj_savefl.sprite_index = obj_savefl.leavesprite;
    obj_savefl.image_speed = 0.2;
}
else
{
    global.cutscene = false;
    obj_pl.state = scr_normal_state;
}
