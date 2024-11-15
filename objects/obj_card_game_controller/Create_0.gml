var i;

cardg_cards_move = false;
cardg_draw_alpha = 0;
cardg_fade_out = false;
cardg_flash = -1;
cardg_flashing_timer = 0;
cardg_g_gained = 0;
cardg_failure = false;
cardg_timer = 0;
cardg_victory = false;
cardg_card_type_number[5] = 0;
cardg_card_type_number[4] = 0;
cardg_card_type_number[3] = 0;
cardg_card_type_number[2] = 0;
cardg_card_type_number[1] = 0;
cardg_card_type_number[0] = 0;
cardg_time_gold = 45;
cardg_time_silver = 75;
cardg_intro_countdown = 150;
cardg_intro_countdown_alpha = 0;

for (i = 0; i < 36; i++)
{
    current_card = instance_create(160, -10, obj_card_game_card);
    current_card.alarm[0] = i + cardg_intro_countdown + 15;
    current_card.card_number = i;
}

instance_create(160, 100, obj_card_game_cursor);
alarm[2] = 60;

if (!audio_is_playing(mus_card_game))
    audio_play_sound(mus_card_game, 1, 1);
