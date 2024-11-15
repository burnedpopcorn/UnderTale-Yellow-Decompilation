function scr_martlet_pacifist_no_attack()
{
    global.turns_passed += 1;
    global.last_action_selected = "Nothing";
    global.hurt_self = global.hit_self;
    global.hit_self = false;
    global.enemy_hurt = global.enemy_hit;
    global.enemy_hit = false;
    global.item_used = global.item_use;
    global.item_use = "Nothing";
    global.item_gifted = global.item_gift;
    global.item_gift = "Nothing";
    
    if (global.last_text_move_select < 1)
        global.last_text_move_select += 1;
    
    global.determine_attack_priority = 1;
    script_execute(scr_determine_enemy_attack_yellow);
    
    if (global.important_cutscene == false)
    {
        with (obj_heart_battle_menu)
            event_user(0);
    }
    
    instance_destroy();
}
