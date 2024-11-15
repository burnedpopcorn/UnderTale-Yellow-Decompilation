event_inherited();

if (live_call())
    return global.live_result;

if (global.snowdin_flag[14] >= 5)
{
    instance_destroy();
    exit;
}

if (global.snowdin_flag[13] >= 2)
    instance_destroy();

up_sprite = spr_martlet_up;
right_sprite = spr_martlet_right;
down_sprite = spr_martlet_down;
left_sprite = spr_martlet_left;
up_sprite_idle = spr_martlet_up_talk;
right_sprite_idle = spr_martlet_right_talk;
down_sprite_idle = spr_martlet_down_talk;
left_sprite_idle = spr_martlet_left_talk;
action_sprite = false;
scene = 0;
x_dest[0] = 320;
y_dest[0] = 45;
actor_speed = 2;
axis_override = "x";
end_direction = "right";
walk_collider = -4;
