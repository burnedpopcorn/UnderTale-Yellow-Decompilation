if (global.flowey_battle_1_phase < 4)
{
    global.battle_enemy_name = "flowey";
    global.battling_boss = true;
    global.battle_start = true;
    global.sound_carry_overworld = false;
    room_goto(rm_battle_flowey);
    audio_stop_sound(mus_cymbal);
    obj_pl.image_alpha = 0;
    scr_battle_save();
}
else
{
    room = rm_battle_flashback_final;
    obj_pl.x = 20;
    obj_pl.y = 150;
}
