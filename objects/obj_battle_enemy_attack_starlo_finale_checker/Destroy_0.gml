with (obj_battle_enemy_attack_starlo_guns_horizontal_gun)
    instance_destroy();

if (global.turns_passed == 0)
{
    with (obj_heart_battle_fighting_parent)
        moveable = false;
    
    instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
    instance_create(0, 0, obj_quote_battle_starlo);
    exit;
}

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);
