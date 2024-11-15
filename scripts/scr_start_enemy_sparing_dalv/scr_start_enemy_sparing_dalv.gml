function scr_start_enemy_sparing_dalv()
{
    scr_audio_fade_out_battle(1000);
    instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
    instance_create(0, 0, obj_quote_battle_dalv_sparing);
}
