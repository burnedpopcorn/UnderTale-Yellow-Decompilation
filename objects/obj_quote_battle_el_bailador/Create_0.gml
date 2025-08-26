var turns_passed = global.turns_passed;
var enemy_low_hp = global.enemy_low_hp;
var enemy_mode = global.enemy_mode;
var enemy_mode_gen = global.enemy_mode_gen;

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
        message[0] = "Heating up!";
        portrait[0] = 1755;
        message_end = 0;
        break;
    
    case 3:
        message[0] = "The passion! IT GROWS!";
        portrait[0] = 1755;
        message_end = 0;
        break;
    
    case 4:
        message[0] = "Aha! Yes!";
        message[1] = "This is what I live#for!";
        portrait[0] = 1755;
        portrait[1] = 1759;
        message_end = 1;
        break;
    
    case 5:
        message[0] = "A life without dance#is empty, I say!";
        portrait[0] = 1755;
        message_end = 0;
        break;
    
    case 6:
        message[0] = "Others say that dance#can also take life#away!";
        message[1] = "I do not see what they#mean!";
        portrait[0] = 1755;
        portrait[1] = 1759;
        message_end = 1;
        break;
    
    case 7:
        message[0] = "A world of solitude#and silence? That is#not for me!";
        message[1] = "The Underground is#much too depressing,#you see!";
        portrait[0] = 1755;
        portrait[1] = 1759;
        message_end = 1;
        break;
    
    case 8:
        message[0] = "We are trapped within#a barrier with no hope#for freedom!";
        message[1] = "A sad, sad situation!";
        message[2] = "But it is not sad for#I!";
        portrait[0] = 1755;
        portrait[1] = 1759;
        portrait[2] = 1755;
        message_end = 2;
        break;
    
    case 9:
        message[0] = "We must make do#with what we have!";
        message[1] = "Find time for#activities that#make us happy!";
        message[2] = "I am outgoing because#happiness is not a#quiet virtue!";
        message[3] = "I often encourage#monsters in hope that#it is contagious!";
        portrait[0] = 1755;
        portrait[1] = 1759;
        portrait[2] = 1755;
        portrait[3] = 1759;
        message_end = 3;
        break;
    
    case 10:
        message[0] = "Even if monsterkind is#cursed to this grim#state, we must stick#it out to the end!";
        message[1] = "All the way up to the#FINALE!";
        portrait[0] = 1755;
        portrait[1] = 1759;
        message_end = 1;
        break;
    
    default:
        message[0] = "Error: Variable Out Of#Range";
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
