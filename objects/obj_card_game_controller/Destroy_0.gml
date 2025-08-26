with (obj_card_game_card)
    instance_destroy();

with (obj_card_game_card)
    instance_destroy();

if (cardg_failure == true)
{
    obj_npc_cardguy.card_game_result = 0;
}
else
{
    var time_in_seconds = floor(cardg_timer / 30);
    
    if (time_in_seconds < cardg_time_gold)
        obj_npc_cardguy.card_game_result = 3;
    else if (time_in_seconds < cardg_time_silver)
        obj_npc_cardguy.card_game_result = 2;
    else
        obj_npc_cardguy.card_game_result = 1;
    
    global.player_gold += round(cardg_g_gained);
}

audio_sound_gain(mus_card_game, 1, 500);
