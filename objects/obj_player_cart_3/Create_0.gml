if (global.last_room_overworld != "rm_dunes_21")
{
    instance_destroy();
    instance_create(290, y, obj_player_cart);
    exit;
}

obj_pl.image_alpha = 0;
image_speed = 0.2;
hspeed = 2;

if (room == rm_dunes_20)
{
    image_xscale = -1;
    hspeed = -2;
}

state = 0;
timer = 0;
audio_play_sound(snd_rock_roll, 1, 1);

if (global.route == 3)
    sprite_index = spr_player_cart_geno;

scr_load_palette_shader(1);
palette_index = obj_pl.palette_index;
shader_on = obj_pl.shader_on;
