var turns_passed, new_message_number;

text_effect = "circle";
attack = false;
scene = 0;
cutscene_timer = 0;
skippable = true;
message_adv = false;
turns_passed = global.turns_passed;
enemy_talker = 0;
voice_pitch = 0.5;

switch (turns_passed)
{
    case 0:
        draw_enabled = false;
        message[0] = "C R O A K .";
        message[1] = "M A C R O#R I B B I T .";
        message_end = 1;
        skippable = false;
        break;
    
    case 1:
        message[0] = "M A C R O#C R O A K .";
        message_end = 0;
        break;
    
    default:
        new_message_number = irandom_range(1, 8);
        
        switch (new_message_number)
        {
            case 1:
                message[0] = "R I B B I T .";
                break;
            
            case 2:
                message[0] = "C R O A K .";
                break;
            
            case 3:
                message[0] = "*GIANT FROG#NOISES*";
                break;
            
            case 4:
                message[0] = "R I B B I T#R I B B I T";
                break;
            
            case 5:
                message[0] = "B I G#C R O A K :D";
                break;
            
            case 6:
                message[0] = "W O B B L E#W O B B L E";
                break;
            
            case 7:
                message[0] = "M A C R O#K E R O";
                break;
            
            case 8:
                message[0] = ". .#(Macro ellipsis.)";
                break;
        }
        
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
