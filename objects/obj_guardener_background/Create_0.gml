shader = 8;
texture = sprite_get_texture(spr_background_enemy_battle_guardener_wind, 0);
u_texture = shader_get_sampler_index(shader, "distort_texture");
u_time = shader_get_uniform(shader, "time");
u_str = shader_get_uniform(shader, "str");
u_uvs = shader_get_uniform(shader, "uvs");
str = 0.003;
uvs = sprite_get_uvs(sprite_index, 0);
