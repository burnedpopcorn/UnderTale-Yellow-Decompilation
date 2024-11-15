var box;

if (live_call())
    return global.live_result;

instance_create_depth(0, 480, -510, obj_flowey_1_attack_intermission_hands);
box = 3154;
obj_battle_hp_max_self.depth = depth - 999;
obj_battle_hp_current_self.depth = depth - 1000;
obj_text_hp.depth = depth - 1000;
obj_text_hp_stat.y = 9999;
obj_text_hp.y = 20;
obj_text_hp_stat.y = 20;
obj_battle_flowey_body_1.depth = box.depth + 1;
flowey_face_sprite = spr_attack_flowey_intermission_face;
flowey_face_x = 320;
flowey_face_y = 140;
scene = 0;
transition_overlay_alpha = 0;
transition_stage = 0;
can_transition = false;
distort_current = 0;
cutscene_timer = 0;
room_transition = false;
instance_destroy(obj_battle_flowey_body_1);
