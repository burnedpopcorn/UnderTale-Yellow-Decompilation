var battle_flag = global.snowdin_flag[13];

if (global.snowdin_flag[14] >= 1 || (battle_flag == 0 && global.geno_complete[2] == false) || (battle_flag == 1 || battle_flag == 2))
{
    instance_destroy();
    exit;
}

event_inherited();
image_speed = 0;
scene = 0;
walk_speed = 3;
action_sprite = false;
arrived_count = 0;
up_sprite = spr_martlet_up;
right_sprite = spr_martlet_right;
down_sprite = spr_martlet_down;
left_sprite = spr_martlet_left;
up_sprite_idle = spr_martlet_up_talk;
right_sprite_idle = spr_martlet_right_talk;
down_sprite_idle = spr_martlet_down_talk;
left_sprite_idle = spr_martlet_left_talk;

if (global.snowdin_flag[13] == 3)
{
    action_sprite = false;
    sprite_index = down_sprite;
    scr_cutscene_start();
    alarm[1] = 30;
    x = 220;
    y = 280;
    obj_pl.x = x;
    obj_pl.y = y + 30;
}
