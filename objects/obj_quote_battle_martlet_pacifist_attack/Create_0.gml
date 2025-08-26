text_effect = "twitchy";
var hit_count = global.hit_count;
var no_hit_count = global.no_hit_count;
var miss_count = global.miss_count;

if ((hit_count + no_hit_count + miss_count) <= 0)
{
    if (global.enemy_mode_previous == 2)
        message[0] = "Okay, finally, now for#protocol two:#attack back!";
    else
        message[0] = "Good, now for protocol#two: attack back!";
    
    message[1] = "It is time to show you#the true strength of a#Royal Guard!";
    portrait_head[0] = 2087;
    portrait_hand[0] = 2058;
    portrait_head[1] = 2087;
    portrait_hand[1] = 2058;
    message_end = 1;
}
else if (global.enemy_hit == true)
{
    if (hit_count == 1)
    {
        message[0] = "Ow! That kinda#hurt...";
        portrait_head[0] = 3540;
        portrait_hand[0] = 2058;
        message_end = 0;
    }
    
    if (hit_count == 2)
    {
        message[0] = "Uh-I'm sorry, it's#just, see, my#guidebook...";
        message[1] = "It didn't really say#being attacked would#hurt this much...";
        message[2] = "I guess it makes#sense, but still...";
        message[3] = "...ow...";
        portrait_head[0] = 2116;
        portrait_hand[0] = 2058;
        portrait_head[1] = 3475;
        portrait_hand[1] = 2058;
        portrait_head[2] = 2116;
        portrait_hand[2] = 2058;
        portrait_head[3] = 2643;
        portrait_hand[3] = 2058;
        message_end = 3;
    }
    else if (hit_count == 3)
    {
        message[0] = "Ow!!";
        portrait_head[0] = 390;
        portrait_hand[0] = 2058;
        message_end = 0;
    }
    else if (hit_count == 4)
    {
        message[0] = "Does it hurt this#much when I attack#you?";
        message[1] = "'Cause I'm scared I'm#gonna break a wing#here!";
        message[2] = "I don't want you to#feel like this!";
        message[3] = "I wouldn't want anyone#to feel like this!";
        message[4] = "...For the Royal#Guard I guess...";
        portrait_head[0] = 3475;
        portrait_hand[0] = 2058;
        portrait_head[1] = 3540;
        portrait_hand[1] = 2058;
        portrait_head[2] = 3475;
        portrait_hand[2] = 2058;
        portrait_head[3] = 1673;
        portrait_hand[3] = 2058;
        portrait_head[4] = 2116;
        portrait_hand[4] = 2058;
        message_end = 4;
    }
    else if (hit_count == 5)
    {
        message[0] = "Ow!!!";
        portrait_head[0] = 390;
        portrait_hand[0] = 2058;
        message_end = 0;
    }
    else if (hit_count == 6)
    {
        message[0] = "Okay, okay, ow, this#cannot be right!";
        message[1] = "I mean - OW - I'm#gonna be all black#and blue tomorrow!";
        message[2] = "It hurts you too,#right?";
        message[3] = "Like, it's impressive#you don't show it,#but...";
        message[4] = "Ow!";
        portrait_head[0] = 3526;
        portrait_hand[0] = 2058;
        portrait_head[1] = 3475;
        portrait_hand[1] = 2058;
        portrait_head[2] = 3475;
        portrait_hand[2] = 2058;
        portrait_head[3] = 2116;
        portrait_hand[3] = 2058;
        portrait_head[4] = 3475;
        portrait_hand[4] = 2058;
        message_end = 4;
    }
}
else if ((no_hit_count + miss_count) == 1)
{
    message[0] = "...?";
    portrait_head[0] = 2116;
    portrait_hand[0] = 2058;
    message_end = 0;
}
else if ((no_hit_count + miss_count) == 2)
{
    message[0] = "???";
    portrait_head[0] = 2427;
    portrait_hand[0] = 2058;
    message_end = 0;
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
