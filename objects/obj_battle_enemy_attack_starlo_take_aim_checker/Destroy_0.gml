with (obj_battle_enemy_attack_starlo_take_aim_target)
    instance_destroy();

with (obj_battle_enemy_attack_starlo_take_aim_shot)
    instance_destroy();

with (obj_battle_enemy_attack_starlo_take_aim_shot_collider)
    instance_destroy();

with (obj_heart_battle_fighting_parent)
    moveable = false;

if (starlo_take_aim_rope_hit == false)
{
    with (obj_dialogue_box_battle_transformation_any)
        event_user(0);
    
    global.turns_passed = 10;
    exit;
}
else if (starlo_take_aim_rope_hit == true)
{
    instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
    instance_create(0, 0, obj_quote_battle_starlo_rope_hit);
    instance_destroy(obj_battle_enemy_attack_starlo_rope);
    global.attack_cycle += 1;
    global.last_text_move_select = -1;
}
