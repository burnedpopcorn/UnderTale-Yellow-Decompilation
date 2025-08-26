text_effect = "twitchy";
attack = false;
scene = 0;
cutscene_timer = 0;
skippable = true;
message_adv = false;
var turns_passed = global.turns_passed;

switch (turns_passed)
{
    case 4:
        message[0] = "Why...";
        message_end = 0;
        break;
    
    case 5:
        message[0] = "Why won't you#die!?";
        message_end = 0;
        break;
    
    case 6:
        message[0] = "Why!?";
        message_end = 0;
        break;
    
    case 7:
        message[0] = "If I don't#succeed, it's#over!";
        message_end = 0;
        break;
    
    case 8:
        message[0] = "Die!!";
        message_end = 0;
        break;
    
    case 9:
        message[0] = "Just die!!!";
        message_end = 0;
        break;
    
    case 10:
        audio_play_sound(snd_ceroba_yell, 1, 0);
        scr_screenshake_battle(8, 2);
        message[0] = "DIE!!!!!";
        message_end = 0;
        break;
}

message_current = 0;
message_draw = "";
draw_enabled = true;
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
