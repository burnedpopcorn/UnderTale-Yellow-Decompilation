sprite_x_offset = sprite_get_xoffset(spr_lake_water_mask);
sprite_y_offset = sprite_get_yoffset(spr_lake_water_mask);
reflection_surf = surface_create(sprite_get_width(obj_sans_lake.sprite_index), sprite_get_height(obj_sans_lake.sprite_index));
var alpha_uniform = shader_get_uniform(sh_reflection, "Alpha");
shader_set_uniform_f(alpha_uniform, 0.08);
