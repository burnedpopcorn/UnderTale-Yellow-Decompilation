function scr_enemy_timer_attacks_feisty_five()
{
    if (!instance_exists(obj_attack_cycler_feisty_five))
        instance_create(0, 0, obj_attack_cycler_feisty_five);
    
    var enemy_attack = global.enemy_attack;
    
    if (instance_exists(obj_dialogue_box_battle_transformation_any) && obj_heart_battle_fighting_parent.moveable == true)
    {
        if (enemy_attack == "Ed Smash" && !instance_exists(obj_attack_ed_smash_controller))
            instance_create(0, 0, obj_attack_ed_smash_controller);
        else if (enemy_attack == "Moray Balls" && !instance_exists(obj_attack_moray_balls_controller))
            instance_create(0, 0, obj_attack_moray_balls_controller);
        else if (enemy_attack == "Ace Dealing" && !instance_exists(obj_attack_ace_dealing_controller))
            instance_create(0, 0, obj_attack_ace_dealing_controller);
        else if (enemy_attack == "Mooch Bag" && !instance_exists(obj_attack_mooch_coin_bag_controller))
            instance_create(0, 0, obj_attack_mooch_coin_bag_controller);
        else if (enemy_attack == "Ed Grab" && !instance_exists(obj_attack_ed_grab_controller))
            instance_create(0, 0, obj_attack_ed_grab_controller);
        else if (enemy_attack == "Moray Spin" && !instance_exists(obj_attack_moray_sword_spin))
            instance_create(-45, obj_dialogue_box_battle_transformation_any.bbox_bottom + 60, obj_attack_moray_sword_spin);
        else if (enemy_attack == "Coin Rain" && !instance_exists(obj_attack_mooch_coin_rain_controller))
            instance_create(-60, obj_dialogue_box_battle_transformation_any.bbox_bottom + 30, obj_attack_mooch_coin_rain_controller);
        else if (enemy_attack == "Ace Cards" && !instance_exists(obj_attack_ace_cards_controller))
            instance_create(0, 0, obj_attack_ace_cards_controller);
        else if (enemy_attack == "Grab & Moray" && !instance_exists(obj_attack_ed_grab_moray_sword_controller))
            instance_create(0, 0, obj_attack_ed_grab_moray_sword_controller);
        else if (enemy_attack == "Coin Rain & Ace Cards" && !instance_exists(obj_attack_coin_rain_ace_cards_controller))
            instance_create(0, 0, obj_attack_coin_rain_ace_cards_controller);
    }
}
