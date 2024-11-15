var i;

up_sprite = spr_rals_up;
right_sprite = spr_rals_right;
down_sprite = spr_rals_down;
left_sprite = spr_rals_left;
up_sprite_idle = spr_martlet_up_talk;
right_sprite_idle = spr_martlet_right_talk;
down_sprite_idle = spr_martlet_down_talk;
left_sprite_idle = spr_martlet_left_talk;
can_animate = false;
npc_move_delay_max = 10;
npc_move_current = 0;
last_player_dir = obj_pl.direction;

for (i = npc_move_delay_max; i > 0; i--)
{
    x_new[i] = -1;
    y_new[i] = -1;
    dir_new[i] = -1;
}

image_index = 0;
image_speed = 0;
