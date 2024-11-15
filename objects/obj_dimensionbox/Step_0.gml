if (keyboard_multicheck_pressed(0) && scr_interact() == true)
{
    audio_play_sound(snd_mainmenu_select, 20, 0);
    instance_create(__view_get(e__VW.XView, 0) + 8, __view_get(e__VW.YView, obj_quote_battle_ceroba_outro_4) + 8, obj_dimensional_box_screen_overworld);
    instance_create(obj_dimensional_box_screen_overworld.x + 20, obj_dimensional_box_screen_overworld.y + 37, obj_heart_dimensional_box_overworld);
    scr_cutscene_start();
}
