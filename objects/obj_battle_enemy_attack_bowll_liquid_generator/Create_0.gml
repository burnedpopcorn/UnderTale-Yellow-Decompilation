marsh_count = 0;
marsh_max = 14;
marsh_disjoint = 15;
marsh_alarm = 20;
end_alarm = 40;
liquid_hcurrent = 0;
liquid_hdest = 0;
liquid_speed = 1;
liquid_inc = 4;
box = 3154;
instance_create(box.bbox_right + 1, box.y, obj_battle_enemy_attack_bowll_liquid_mug);
instance_create(box.bbox_left + 5, box.bbox_bottom - 5 - ((box.sprite_height - 10) / 4), obj_battle_enemy_attack_bowll_liquid_top_leader);
alarm[0] = 30;
