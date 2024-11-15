var battle_box;

battle_box = 3154;
attack_timer = room_speed * 8;
sword_dist = 100;
sword_spawn_y = irandom_range(battle_box.bbox_top + 10, battle_box.bbox_bottom - 10);
sword_spawn_y_2 = sword_spawn_y + 70;

if (sword_spawn_y > 320)
    sword_spawn_y_2 = sword_spawn_y - 70;

alarm[0] = room_speed * 5;
instance_create(camera_get_view_width(view_camera[0]) + 51, battle_box.y, obj_attack_ed_grab_hand);
instance_create_depth(battle_box.bbox_left - 4, sword_spawn_y, -50, obj_attack_ed_grab_moray_sword_sword);
