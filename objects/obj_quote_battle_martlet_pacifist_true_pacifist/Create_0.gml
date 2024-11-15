var turns_passed;

text_effect = "twitchy";
attack = false;
turns_passed = global.turns_passed;

if (turns_passed == 0)
{
    attack = true;
    
    if (global.enemy_mode_previous == 1)
    {
        message[0] = "Alright, intruder!";
        message[1] = "Prepare for the Royal#Guard Gauntlet!";
        portrait_head[0] = 2087;
        portrait_hand[0] = 2058;
        portrait_head[1] = 2087;
        portrait_hand[1] = 2058;
        message_end = 1;
    }
    else
    {
        message[0] = "That was only a#warmup.";
        message[1] = "Prepare for the Royal#Guard Gauntlet!";
        portrait_head[0] = 2087;
        portrait_hand[0] = 2058;
        portrait_head[1] = 2087;
        portrait_hand[1] = 2058;
        message_end = 1;
    }
}
else if (turns_passed == 1)
{
    attack = true;
    message[0] = "Hi-YA!";
    portrait_head[0] = 2087;
    portrait_hand[0] = 2058;
    message_end = 0;
}
else if (turns_passed == 2)
{
    attack = true;
    message[0] = "Take this, intruder!";
    portrait_head[0] = 2087;
    portrait_hand[0] = 2058;
    message_end = 0;
}
else if (turns_passed == 3)
{
    attack = true;
    message[0] = "Phew!";
    message[1] = "This is a real#workout.";
    message[2] = "Keep it up, Martlet!";
    portrait_head[0] = 314;
    portrait_hand[0] = 2058;
    portrait_head[1] = 314;
    portrait_hand[1] = 2058;
    portrait_head[2] = 2087;
    portrait_hand[2] = 2058;
    message_end = 2;
}
else if (turns_passed == 4)
{
    attack = true;
    message[0] = "...?";
    portrait_head[0] = 2116;
    portrait_hand[0] = 2058;
    message_end = 0;
}
else if (turns_passed == 5)
{
    message[0] = "See, when I#apprehended that girl,#I didn't have this#problem.";
    message[1] = "Well... I guess she#didn't attack me per#se...";
    message[2] = "But she scolded me and#got real aggressive,#like:";
    message[3] = "\"What are you on#about?! I'm not human!#Clear the feathers out#of your head!\"";
    message[4] = "Would you mind being#aggressive like her?";
    portrait_head[0] = 2427;
    portrait_hand[0] = 2058;
    portrait_head[1] = 1610;
    portrait_hand[1] = 2058;
    portrait_head[2] = 126;
    portrait_hand[2] = 2058;
    portrait_head[3] = 2087;
    portrait_hand[3] = 2058;
    portrait_head[4] = 3673;
    portrait_hand[4] = 2058;
    message_end = 4;
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
