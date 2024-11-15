if (live_call())
    return global.live_result;

battle_box = 3154;
obj_ceroba_body_pacifist_phase_2.sprite_index = spr_ceroba_p2_special_attack_1;
obj_ceroba_body_pacifist_phase_2.image_index = 0;
obj_ceroba_body_pacifist_phase_2.image_speed = 1;
bullet_attack_count = 6;

if (!instance_exists(obj_ceroba_transform_particles))
    instance_create_depth(0, 0, -100, obj_ceroba_transform_particles);

scr_enable_battle_box_surface();
