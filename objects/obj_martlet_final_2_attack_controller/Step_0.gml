if (live_call())
    return global.live_result;

if (global.current_hp_enemy <= 0 && !battle_end_noloop)
{
    if (instance_exists(obj_heart_battle_fighting_parent))
        obj_heart_battle_fighting_parent.moveable = false;
    
    scr_audio_fade_out(global.battle_music, 500);
    global.enemy_attack = "Empty";
    
    with (obj_martlet_final_2_base)
    {
    }
    
    with (obj_dialogue_box_battle_transformation_any)
        event_user(0);
    
    instance_create(390, 74, obj_quote_bubble_battle_yellow_3);
    instance_create(0, 0, obj_quote_battle_martlet_genocide_final_2_outro);
    obj_quote_bubble_battle.visible = 0;
    obj_martlet_final_bg.fade_out = true;
    battle_end_noloop = true;
}
