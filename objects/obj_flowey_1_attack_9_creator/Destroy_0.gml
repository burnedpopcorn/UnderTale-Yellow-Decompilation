if (live_call())
    return global.live_result;

instance_destroy(obj_flowey_1_attack_9_head);
instance_destroy(obj_flowey_1_attack_9_thorns);
obj_battle_flowey_body_1.y = flowey_ystart;

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
