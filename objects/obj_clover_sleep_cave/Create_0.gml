if (global.dunes_flag[0] == 1)
{
    instance_destroy();
    exit;
}

image_speed = 0;
timer = 90;
scr_cutscene_start();
global.current_hp_self = 1;
obj_pl.direction = 270;
obj_pl.image_alpha = 0;
obj_pl.x = x;
obj_pl.y = y;
obj_pl.palette_index = 1;
obj_pl.shader_on = true;
scr_load_palette_shader(1);
palette_index = 1;
shader_on = true;

if (global.route == 3)
    sprite_index = spr_dunes01_getup_geno;
