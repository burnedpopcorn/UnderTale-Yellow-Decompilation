event_inherited();
up_sprite = spr_axis_up;
right_sprite = spr_axis_right;
down_sprite = spr_axis_down;
left_sprite = spr_axis_left;
up_sprite_idle = spr_axis_up;
right_sprite_idle = spr_axis_right;
down_sprite_idle = spr_axis_down;
left_sprite_idle = spr_axis_left;
action_sprite = false;

if (global.geno_complete[3] == true && global.sworks_flag[3] >= 1)
{
    up_sprite = spr_axis_damaged_up;
    right_sprite = spr_axis_damaged_right;
    down_sprite = spr_axis_damaged_down;
    left_sprite = spr_axis_damaged_left;
    up_sprite_idle = spr_axis_damaged_up;
    right_sprite_idle = spr_axis_damaged_right;
    down_sprite_idle = spr_axis_damaged_down;
    left_sprite_idle = spr_axis_damaged_left;
}

scene = 0;
x_dest[0] = x;
y_dest[0] = y;
actor_speed = 3;
axis_override = "nothing";
end_direction = "left";
walk_collider = -4;
npc_voice_sfx = snd_talk_axis;
image_speed = 1/3;
