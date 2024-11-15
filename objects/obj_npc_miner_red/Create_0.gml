if (global.dunes_flag[12] > 0)
    instance_destroy();

event_inherited();
depth = -y;
up_sprite = spr_miner_red_walk_up;
right_sprite = spr_miner_red_right;
down_sprite = spr_miner_red_down;
left_sprite = spr_miner_red_left;
up_sprite_idle = spr_miner_red_walk_up;
right_sprite_idle = spr_miner_red_right;
down_sprite_idle = spr_miner_red_down;
left_sprite_idle = spr_miner_red_left;
action_sprite = false;
scene = 0;
npc_direction = "left";
actor_speed = 2;
axis_override = "nothing";
end_direction = "left";
walk_collider = -4;
can_walk = true;
fade_out = false;
x_dest[0] = 0;
y_dest[0] = y;
waiter = 0;
