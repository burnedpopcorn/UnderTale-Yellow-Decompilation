if (live_call())
    return global.live_result;

obj_battle_flowey_body_1.y = flowey_ystart;
instance_destroy(obj_flowey_1_attack_6_face);
instance_destroy(obj_flowey_1_attack_6_tear);
instance_create_depth(0, 0, -100, obj_flowey_battle_screen_glitch_attack_switch);

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);

with (obj_dialogue_box_battle_transformation_any_in)
    event_perform(ev_alarm, 0);
