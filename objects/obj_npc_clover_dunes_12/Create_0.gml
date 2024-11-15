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

action_sprite = false;
scene = 0;
actor_follower = -4;
party_noloop = false;

with (obj_pl)
    image_alpha = 0;

if (room == rm_dunes_13)
{
    x_dest[0] = 420;
    y_dest[0] = y;
    x_dest[1] = 420;
    y_dest[1] = 150;
}

if (room == rm_dunes_14)
{
    x_dest[0] = 100;
    y_dest[0] = y;
    x_dest[1] = 100;
    y_dest[1] = 145;
}

npc_direction = "up";
actor_speed = 3;
axis_override = "x";
end_direction = "up";
walk_collider = 1133;
destination_count = 0;
can_walk = true;
player_fade_out = false;
scr_load_palette_shader(1);
palette_index = obj_pl.palette_index;
shader_on = obj_pl.shader_on;
