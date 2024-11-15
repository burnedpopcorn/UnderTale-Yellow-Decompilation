random_frames = irandom_range(0, 2);

for (i = 0; i <= random_frames; i++)
{
    if (i == random_frames)
    {
        global.id_store = id;
        instance_create(x, y - (sprite_height * (i + 1)) - 18, obj_battle_enemy_attack_martlet_catapult_frame_center);
        id_frame_center = global.id_store;
    }
    else
    {
        global.id_store = id;
        instance_create(x, y - (sprite_height * (i + 1)), obj_battle_enemy_attack_martlet_catapult_frame_middle);
        id_frame_middle[i] = global.id_store;
    }
}

id_arm = id_frame_center.id_arm;
move_speed = 4;
x_destination = obj_dialogue_box_battle_transformation_any.bbox_right + 80;
launch_alarm = 20;
launch_alarm_active = false;
launch_count = 0;
launch_max = irandom_range(4, 6);
