var turns_passed, enemy_low_hp, enemy_mode, enemy_mode_gen;

turns_passed = global.turns_passed;
enemy_low_hp = global.enemy_low_hp;
enemy_mode = global.enemy_mode;
enemy_mode_gen = global.enemy_mode_gen;

switch (turns_passed)
{
    case 0:
        message[0] = "I want to see your#spirit of fire!";
        message[1] = "One and two and-";
        portrait[0] = 1755;
        portrait[1] = 1759;
        message_end = 1;
        break;
    
    case 1:
        message[0] = "Ah, that was much too#simple!";
        message[1] = "Let us try this!";
        portrait[0] = 1755;
        portrait[1] = 1759;
        message_end = 1;
        break;
    
    case 2:
        message[0] = "Come on, dance#with me!";
        portrait[0] = 1755;
        message_end = 0;
        break;
    
    case 3:
        message[0] = "I am only trying#to teach!";
        message[1] = "Follow my lead!";
        message_end = 1;
        break;
    
    case 4:
        message[0] = "Ha ha!";
        message[1] = "This is fun,#right?";
        message_end = 1;
        break;
    
    case 5:
        scr_audio_fade_out(512, 1000);
        message[0] = "Ha...";
        message_end = 0;
        break;
    
    case 6:
        message[0] = "Ha...";
        message_end = 0;
        break;
    
    case 7:
        message[0] = ".....";
        message_end = 0;
        break;
    
    default:
        message[0] = "...";
        portrait[0] = 1755;
        message_end = 0;
}

message_current = 0;
message_draw = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);
