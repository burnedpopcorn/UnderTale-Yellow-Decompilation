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

with (obj_pl)
    image_alpha = 0;

npc_direction = "down";
sprite_index = obj_pl.sprite_index;
actor_speed = 3;
axis_override = "nothing";

if (room == rm_dunes_20)
    end_direction = "right";
else
    end_direction = "left";

walk_collider = 1681;
destination_count = 0;
can_walk = true;
player_fade_out = false;

if (room == rm_dunes_20)
{
    x_dest[0] = 280;
    y_dest[0] = 180;
}
else
{
    x_dest[0] = 320;
    y_dest[0] = 340;
}

scr_load_palette_shader(1);
palette_index = obj_pl.palette_index;
shader_on = obj_pl.shader_on;
