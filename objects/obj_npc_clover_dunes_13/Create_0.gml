event_inherited();
depth = -y;
up_sprite = spr_pl_up;
right_sprite = spr_pl_right;
down_sprite = spr_pl_down;
left_sprite = spr_pl_left;
up_sprite_idle = spr_pl_up;
right_sprite_idle = spr_pl_right;
down_sprite_idle = spr_pl_down;
left_sprite_idle = spr_pl_left;
action_sprite = false;

if (global.route == 3)
{
    down_sprite = spr_pl_down_geno;
    down_sprite_idle = spr_pl_down_geno;
}

scene = 0;

with (obj_pl)
{
    image_alpha = 0;
    direction = 90;
}

x_dest[0] = x;
y_dest[0] = 210;
npc_direction = "down";
actor_speed = 3;
axis_override = "x";
end_direction = "up";
walk_collider = 1133;
destination_count = 0;
can_walk = false;
player_fade_in = true;
scr_load_palette_shader(1);
palette_index = 1;
shader_on = true;
