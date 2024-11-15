door_menu_open = false;
door_solution = "none";
timer = 0;
cutscene_music = 0;
cutscene_timer = 0;
scene = 0;
image_speed = 0;
instance_deactivate_object(inst_105566);

if (global.sworks_flag[25] >= 5)
{
    solid = false;
    scene = 35;
    image_index = image_number - 1;
    instance_activate_object(inst_105566);
}

if (global.sworks_flag[25] >= 6)
{
    instance_create(304, 170, obj_chem_05_floor_melt);
    obj_chem_05_floor_melt.image_index = -1;
    obj_chem_05_floor_melt.image_speed = 0;
}
