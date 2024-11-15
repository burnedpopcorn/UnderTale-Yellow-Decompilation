event_inherited();
up_sprite = spr_pl_up_snowdin;
right_sprite = spr_pl_right_snowdin;
down_sprite = spr_pl_down_snowdin;
left_sprite = spr_pl_left_snowdin;
up_sprite_idle = spr_pl_up_snowdin;
right_sprite_idle = spr_pl_right_snowdin;
down_sprite_idle = spr_pl_down_snowdin;
left_sprite_idle = spr_pl_left_snowdin;

if (global.route == 3)
{
    up_sprite = spr_pl_up;
    right_sprite = spr_pl_right_geno;
    down_sprite = spr_pl_down_geno;
    left_sprite = spr_pl_left_geno;
    up_sprite_idle = spr_pl_up;
    right_sprite_idle = spr_pl_right_geno;
    down_sprite_idle = spr_pl_down_geno;
    left_sprite_idle = spr_pl_left_geno;
}

sprite_index = right_sprite;
depth = obj_pl.depth;
action_sprite = false;
scene = 0;

with (obj_pl)
    image_alpha = 0;

x_dest[0] = 330;
y_dest[0] = 70;
actor_speed = 3;
axis_override = "x";
end_direction = "right";
walk_collider = 1133;
destination_count = 0;

if (global.route == 3)
{
    scr_load_palette_shader(1);
    palette_index = obj_pl.palette_index;
    shader_on = obj_pl.shader_on;
}
