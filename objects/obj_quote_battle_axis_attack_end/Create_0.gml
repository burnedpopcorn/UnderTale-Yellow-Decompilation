text_effect = "twitchy";
attack = false;
scene = 0;
cutscene_timer = 0;
skippable = true;
message_adv = false;
global.action_1_selected_count = 0;
var current_turn = global.special_action_count;
enemy_talker = 0;

switch (current_turn)
{
    case 0:
        message[0] = "WHAT ARE YOU#DOING WITH THAT#LID?";
        message[1] = "IT WAS NOT#SUPPOSED TO#BE USEFUL.";
        message[2] = "THAT IS CHEATING.";
        message_end = 2;
        break;
    
    case 1:
        message[0] = "ZzzZZKKZ#DPPP-D_-A - _";
        message[1] = "WHAT WAS THAT?#WHAT DID I SAY?";
        message[2] = "\"ZzzZKKZ#DPPP-D_-A - _\"#IS NOT A WORD.";
        message[3] = "WHY DID I SAY#THAT?";
        message_end = 3;
        break;
    
    case 2:
        message[0] = "BZZT_Zz#PRpP /";
        message[1] = "I DID IT AGAIN.#HOW.";
        message[2] = "WAIT. THIS IS#YOUR DOING. OF#COURSE IT IS.";
        message[3] = "DO NOT SHOCK#ME AGAIN, OKAY?";
        message_end = 3;
        break;
    
    case 3:
        message[0] = "AZ_a_D?f#F . .";
        message[1] = "I A-AM ST_ARTING#TO REGRET GIVING#YOU THAT LID.";
        message[2] = "COULD YOU PLEASE#DROP IT?";
        message[3] = "JUST KICK IT#INTO THE FIERY#PIT BELOW US.#SIMPLE.";
        message_end = 3;
        break;
    
    case 4:
        message[0] = "ZBsssZ t-t-D#? d";
        message[1] = "THAT IS ENOUGH.";
        message[2] = "UNBEKNOWNST TO#YOU, I BROUGHT#A BACKUP PLAN.";
        message[3] = "PORTABLE#GENERATORS#=#INFINITE BATTERY.";
        message[4] = "GOOD LUCK.";
        message_end = 4;
        break;
    
    case 5:
        message[0] = "SERIOUSLY???";
        message[1] = "I AM REACHING#UNHEARD LEVELS#OF [ticked].";
        message[2] = "LEVEL 7 AT#LEAST.#YOUR FAULT.";
        message_end = 2;
        break;
    
    case 6:
        message[0] = "[screw] YOU#[screw] YOU#[screw] YOU#[screw] YOU#[screw] YOU-";
        message_end = 0;
        break;
    
    case 7:
        message[0] = "DoPDzzzZ_//";
        message[1] = "GAH. ";
        message[2] = "YOU WOULD NOT#LIKE ME AT LOW#BATTERY.";
        message[3] = "I AM WARNING YOU#TO NOT DRAIN#MY BATTERY.";
        message_end = 3;
        break;
    
    case 8:
        if (!instance_exists(obj_axis_neutral_ending_cutscene))
            instance_create_depth(0, 0, -9999, obj_axis_neutral_ending_cutscene);
        
        message[0] = "ZzzzzBBZzzzz#AooaaaA- _- .  .";
        message[1] = "* . . .";
        message[2] = "AH.";
        message[3] = "WHAT DID YOU#DO TO ME?";
        message[4] = "I DON'T FEEL AN#UTTER MURDEROUS#RAGE ANYMORE.";
        message[5] = "I... DO NOT#KNOW WHAT TO#DO WITH MYSELF.";
        message[6] = "SUPPOSE I WILL#STARE AT YOU#BLANKLY UNTIL#YOU DO SOMETHING.";
        message_end = 6;
        skippable = false;
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
global.special_action_count_last = global.special_action_count;
