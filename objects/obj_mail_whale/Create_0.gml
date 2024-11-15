image_speed = 0.2;
alarm[0] = 30;
scene = 0;
cutscene_timer = 0;
fly_speed = 2;
mail_whale_y_target = obj_pl.y - 15;
mail_whale_shadow_alpha = 0;

if (x > obj_pl.x)
    obj_pl.direction = 0;
else
    obj_pl.direction = 180;

depth = -(obj_pl.y + 15);

if (global.player_can_travel == true)
    sprite_index = spr_mail_whale_basket_empty_yellow;

mail_whale_travel_noloop = false;
mail_whale_mail_noloop = false;
scr_new_mail_check();
scr_load_palette_shader(1);
palette_index = obj_pl.palette_index;
shader_on = obj_pl.shader_on;
transition = -4;
