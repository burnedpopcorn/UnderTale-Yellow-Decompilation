var hit_count;

text_effect = "twitchy";
attack = false;
transform = false;
transforming = false;

if (global.enemy_hit == false)
{
    message[0] = "...";
    portrait_head[0] = 29;
    portrait_hand[0] = 2058;
    message_end = 0;
}
else
{
    hit_count = global.hit_count;
    
    if (hit_count == 0)
    {
        message[0] = "Ow! What are you#doing?!";
        message[1] = "I understand if you're#scared, but you have#to trust me!";
        message[2] = "I'm with the Royal#Guard! It's my job to#make sure you're safe!";
        portrait_head[0] = 390;
        portrait_hand[0] = 2058;
        portrait_head[1] = 1291;
        portrait_hand[1] = 2058;
        portrait_head[2] = 314;
        portrait_hand[2] = 2058;
        message_end = 2;
    }
    else if (hit_count == 1)
    {
        message[0] = "Ow ow ow! Look, I get#it!";
        message[1] = "You're scared and#don't know what to do,#everyone is!";
        message[2] = "But you can't take#that out on me!";
        message[3] = "If you go around#hurting everyone all#the time, well...";
        message[4] = "No one will ever#help you!";
        portrait_head[0] = 390;
        portrait_hand[0] = 2058;
        portrait_head[1] = 1291;
        portrait_hand[1] = 2058;
        portrait_head[2] = 1291;
        portrait_hand[2] = 2058;
        portrait_head[3] = 1291;
        portrait_hand[3] = 2058;
        portrait_head[4] = 1291;
        portrait_hand[4] = 2058;
        message_end = 4;
    }
    else if (hit_count == 2)
    {
        message[0] = "Hey! Snap out of it!";
        message[1] = "Do you do this to#everyone who tries to#be nice to you?!";
        message[2] = "You... you do, don't#you.";
        message[3] = "You're the one they're#all running from,#aren't you?";
        message[4] = "I-I don't know what to#do... I've been so...#naive.";
        message[5] = "You're just a kid.";
        portrait_head[0] = 3526;
        portrait_hand[0] = 2058;
        portrait_head[1] = 3526;
        portrait_hand[1] = 2058;
        portrait_head[2] = 3443;
        portrait_hand[2] = 2058;
        portrait_head[3] = 3443;
        portrait_hand[3] = 2058;
        portrait_head[4] = 1673;
        portrait_hand[4] = 2058;
        portrait_head[5] = 1291;
        portrait_hand[5] = 2058;
        message_end = 5;
    }
    else if (hit_count == 3)
    {
        attack = true;
        transform = true;
        message[0] = "Well, I'll be honest#with you.";
        message[1] = "My handbook says#nothing about this#specific\tsituation.";
        message[2] = "However...";
        message[3] = "I do know that#something similar has#happened before.";
        message[4] = "They put a stop to#that so...";
        message[5] = "It's up to me to put#a stop to this!";
        portrait_head[0] = 3475;
        portrait_hand[0] = 2058;
        portrait_head[1] = 1610;
        portrait_hand[1] = 2058;
        portrait_head[2] = 3475;
        portrait_hand[2] = 2058;
        portrait_head[3] = 2905;
        portrait_head[4] = 2905;
        portrait_head[5] = 2905;
        portrait_hand[3] = 2058;
        portrait_hand[4] = 2058;
        portrait_hand[5] = 2058;
        message_end = 5;
    }
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
