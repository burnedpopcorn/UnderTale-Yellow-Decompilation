function scr_enable_battle_box_surface()
{
    if (!instance_exists(obj_surface_drawer))
        instance_create_depth(0, 0, -999, obj_surface_drawer);
}
