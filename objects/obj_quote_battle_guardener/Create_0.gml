var turns_passed;

if (live_call())
    return global.live_result;

text_effect = "twitchy";
attack = false;
scene = 0;
cutscene_timer = 0;
skippable = true;
message_adv = false;

if (global.turns_passed > 16)
    global.turns_passed = 16;

turns_passed = global.turns_passed;
enemy_talker = 0;
voice_pitch = 0.25;

if (global.enemy_sparing)
{
    scr_audio_fade_out(37, 1000);
    message[0] = "WAIT-";
    message[1] = "YOU- Y0U / _I. ..";
    message[2] = "[>/0FFENSE LEVEL#LOWERED_]";
    message[3] = ". .";
    message[4] = "OH. ";
    message[5] = "WHAT HAPPENED?";
    message[6] = "THERE S_SEEMS TO#BE A GAP IN MY#MEMORY CORE.";
    message[7] = "I AM SORRY.";
    message_end = 7;
    global.enemy_mode = 2;
    global.action_amount = 0;
}
else
{
    switch (turns_passed)
    {
        case 0:
            message[0] = "I HAVE#INCAPACITATED#YOUR OPTIONS.";
            message[1] = "I ASK YOU#COOPERATE WITH#ME.";
            message_end = 1;
            break;
        
        case 1:
            message[0] = "ACCEPT YOUR#OFFENSE,#TRAMPLER.";
            message_end = 0;
            break;
        
        case 2:
            message[0] = "YOU MUST LEARN#THAT PLANTLIFE#IS IMPORTANT.";
            message[1] = "MORE IMPORTANT_#THA;N#Y0U. /";
            message_end = 1;
            break;
        
        case 3:
            message[0] = "IF YOU DO NOT#YIELD, I WILL#CALL FOR BACKUP.";
            message_end = 0;
            break;
        
        case 4:
            message[0] = "YOU ARE A#HANDFUL. ";
            message[1] = "I AM GOING TO#COUNT TO 3.";
            message_end = 1;
            break;
        
        case 5:
            message[0] = "1...";
            message_end = 0;
            break;
        
        case 6:
            message[0] = "2...";
            message[1] = "NOT BLUFFING.";
            message_end = 1;
            break;
        
        case 7:
            message[0] = "3.";
            message[1] = "[CALLING BACKUP_]";
            message[2] = "you called#for help,#guardener?";
            message[3] = "CORRECT.";
            message[4] = "THIS TRAMPLER DOES#NOT VALUE THE#GREENHOUSE.";
            message[5] = "what is#the offense#level, miss?";
            message[6] = "10 - TERMINATION.";
            message[7] = "level 10!?";
            message[8] = "i mean, of#course!";
            message[9] = "we are#sorry,#offender.";
            message[10] = "guardener#says you#deserve#termination.";
            message[11] = "THEY KNOW.";
            message[12] = "sooo...  ";
            message[13] = "ATTACK.   ";
            message[14] = "right.";
            enemy_talker = [0, 0, 1, 0, 0, 2, 0, 1, 1, 2, 2, 0, 1, 0, 1];
            message_end = 14;
            break;
        
        case 8:
            message[0] = "_KEEP IT UP_<";
            message_end = 0;
            break;
        
        case 9:
            message[0] = "PLEASE/ STAY IN#Y0UR_CONFINES !";
            message_end = 0;
            break;
        
        case 10:
            message[0] = "CLEVERLY DONE.";
            message[1] = "YOU HAVE GAINED#MY RESPECT.";
            message[2] = "BUT YOU HAVE#NOT GAINED#MY MERCY.";
            message[3] = "BOTS,#_ATTACK.";
            message_end = 3;
            break;
        
        case 11:
            message[0] = "JUST YOU #AND I AGAIN.";
            message[1] = "IT IS TOO BAD#I CANNOT GROW#TIRED.";
            message[2] = "FOR YOU,#THAT IS.";
            message_end = 2;
            break;
        
        case 12:
            message[0] = "i'm here#for the#attack!    ";
            message[1] = "OH. YOU#MISSED IT.";
            message[2] = "seriously?#maaan.";
            message[3] = "HEY, IT#IS OK.";
            message[4] = "HERE, A FLOWER#TO CHEER#YOU UP.";
            message[5] = "yoo #thanks";
            message[6] = "mind if i#attack a#little?";
            message[7] = "BY ALL#MEANS.";
            enemy_talker = [1, 0, 1, 0, 0, 1, 1, 0];
            message_end = 7;
            break;
        
        case 13:
            message[0] = "STILL#STANDING?";
            message[1] = "YOU ARE#RATHER UPSETTING.";
            message_end = 1;
            break;
        
        case 14:
            message[0] = "JUST WAIT UNTIL#MY CREATOR HEARS#ABOUT THIS.";
            message[1] = "YOU WILL GET#A LONG LECTURE.";
            message[2] = "A LECTURE MORE#PAINFUL THAN#ANYTHING I AM#DOING.";
            message[3] = "TRUE TORTURE.";
            message_end = 3;
            break;
        
        case 15:
            message[0] = "AFTER THAT, THE#HEAD OFFICE WILL#GIVE YOU AN AWARD:";
            message[1] = "\"EXCELLENCE IN#RUINING#GUARDENER'S DAY\"";
            message[2] = "DESERVED.";
            message_end = 2;
            break;
        
        case 16:
            message[0] = "[GIVE_IN, #0_ALREADY// ..";
            message_end = 0;
            break;
    }
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
