image_speed = 0;
image_index = 0;
default_imspd = 1/3;
can_disappear = false;
box = obj_dialogue_box_battle_transformation_any;
generator = 2525;
image_angle = generator.cape_dir;

if (image_angle == 0)
{
    x_dir = -1;
    y_dir = 0;
}
else if (image_angle == 90)
{
    x_dir = 0;
    y_dir = 1;
}
else if (image_angle == 180)
{
    x_dir = 1;
    y_dir = 0;
}
else
{
    x_dir = 0;
    y_dir = -1;
}

global.id_store = id;
instance_create(x + ((box.sprite_width + (2 * generator.c_distance)) * x_dir), y + ((box.sprite_height + (2 * generator.c_distance)) * y_dir), obj_battle_enemy_attack_bowll_bull_bull);
id_bull = global.id_store;
