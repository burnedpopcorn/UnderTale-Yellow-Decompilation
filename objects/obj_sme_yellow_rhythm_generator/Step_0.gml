if (live_call())
    return global.live_result;

if (!audio_is_playing(audio_play) && !instance_exists(obj_sme_yellow_rhythm_note) && !instance_exists(obj_sme_yellow_rhythm_note_geno) && !instance_exists(obj_sme_yellow_rhythm_note_end) && note_final == true && can_end_script == true)
    event_user(0);

if (global.route == 3 || global.battle_enemy_name == "flowey")
{
    with (obj_heart_battle_fighting_red)
        y = clamp(y, 0, (other.box.bbox_top + other.note_speed_numerator) - 4);
}
