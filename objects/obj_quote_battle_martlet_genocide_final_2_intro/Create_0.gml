if (live_call())
    return global.live_result;

text_effect = "twitchy";
attack = false;
scene = 0;
cutscene_timer = 0;
skippable = true;
message_adv = false;
fade_out_gui = true;
message[0] = "What do you think#you're doing?";
message[1] = "Searching for a#reason to hate me?";
message[2] = "Strange...";
message[3] = "You didn't need a#reason when killing#the others...";
message[4] = "Heh.";
message[5] = "I bet you feel r-real#accomplished right#now.";
message[6] = "But the only thing#you managed to#accomplish...";
message[7] = "...is pissing me#off even more.";
message[8] = "There's only one#way this ends.";
message[9] = "And right now, I#feel invigorated.";
message[10] = "Good luck.";
message_end = 10;
message_current = 0;
message_draw = "";
draw_enabled = false;
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;

if (global.hotland_flag[9] > 2)
{
    scene = 8;
    instance_destroy(obj_martlet_final_body_intro);
    draw_enabled = false;
    scr_battle_box_resize_midfight(82, 160, 320, 300);
    global.battle_music = audio_play_sound(mus_retribution, 1, 1);
}

global.hotland_flag[9] = 3;
