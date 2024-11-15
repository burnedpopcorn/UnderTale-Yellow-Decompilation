obj_pl.image_alpha = 0;

if (global.route == 3)
    sprite_index = spr_pl_run_right_geno;

image_index = 1;
image_speed = 0;
hsp = 1;
vsp = -3;
y_start = y;
end_player_alpha = true;
audio_play_sound(snd_playerjump, 1, 0);
scr_load_palette_shader(1);
palette_index = obj_pl.palette_index;
shader_on = obj_pl.shader_on;
