damage_number = scr_determine_damage_number_enemy("cactony a", "cactony b", "cactony c");
launch_sprite = spr_battle_enemy_attack_cactony_needle_white;
launched = false;
prep_speed = 1;
attack_speed = 5;
attack_mult = 2;
image_angle = point_direction(x, y, obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y);
move = true;
fade = false;
fade_alarm = 40;
global.id_store = id;