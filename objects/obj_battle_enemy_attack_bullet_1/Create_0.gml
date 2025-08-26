if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("ceroba", "void", "void");
var battle_box = obj_dialogue_box_battle_transformation_any;
target_x = obj_heart_battle_fighting_parent.x;
target_y = obj_heart_battle_fighting_parent.y;
turn_rate = 0.06;

if (!instance_exists(obj_ceroba_bullet_particle_controller))
    instance_create(0, 0, obj_ceroba_bullet_particle_controller);

sprite_index_og = sprite_index;
sprite_index = -4;
image_alpha = 0;
image_speed = 0;
warning_id = -4;
noloop = true;
alarm[0] = 1;
attack_delay = 30;
