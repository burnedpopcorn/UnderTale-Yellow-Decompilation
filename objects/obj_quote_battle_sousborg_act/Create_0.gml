execute_normal = true;
execute_random = false;
text_effect = "twitchy";
text_effect_2 = "twitchy";
color_count = 0;
random_message = 0;

switch (global.enemy_mode)
{
    case 0:
        message[0] = "Do you have what#it takes to be#among ze greats?";
        message[1] = "Tell me, how does#one cook zis#brittle spheroid?";
        message_end = 1;
        break;
    
    case 1:
        message[0] = "What ez ze next#step, hm?";
        message[1] = "Only master chefs#know ze secret#to perfect-e-on!";
        message_end = 1;
        break;
    
    case 2:
        message[0] = "Almost zere!";
        message[1] = "Ze final step#ez...?";
        message_end = 1;
        break;
}

message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
circle_text_angle = global.circle_text_angle_default;
circle_text_angle_direction = 1;
