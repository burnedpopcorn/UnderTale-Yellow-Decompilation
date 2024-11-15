var miss_count;

text_effect = "twitchy";
miss_count = global.miss_count;

if (miss_count == 0)
{
    message[0] = "Aww, you missed!#That's not fair!";
    message[1] = "You could've had this#great attack and -#ZOOM!";
    message[2] = "Just goes right by#without even leaving#a mark.";
    message[3] = "Tell ya what, I'll#give you a chance to#try again!";
    message[4] = "Take your best shot!";
    portrait_head[0] = 2116;
    portrait_hand[0] = 2058;
    portrait_head[1] = 2116;
    portrait_hand[1] = 2058;
    portrait_head[2] = 2116;
    portrait_hand[2] = 2058;
    portrait_head[3] = 126;
    portrait_hand[3] = 2058;
    portrait_head[4] = 2087;
    portrait_hand[4] = 2058;
    message_end = 4;
}
else if (miss_count == 1)
{
    message[0] = "But that was so close!";
    message[1] = "One more try!";
    message[2] = "Take your time with#aiming this one, I'm#in no rush!";
    portrait_head[0] = 126;
    portrait_hand[0] = 2058;
    portrait_head[1] = 126;
    portrait_hand[1] = 2058;
    portrait_head[2] = 3673;
    portrait_hand[2] = 2058;
    message_end = 2;
}
else if (miss_count == 2)
{
    message[0] = "Uh... you don't mind#if I take my turn,#right?";
    message[1] = "I mean, I want you to#get to hit me, I#really do!";
    message[2] = "But I think this is#starting to break#protocol, and, well...";
    message[3] = "I'm on thin ice as it#is with that, ya know?";
    message[4] = "...";
    message[5] = "Okay, one more shot!#But make it count!";
    portrait_head[0] = 2116;
    portrait_hand[0] = 2058;
    portrait_head[1] = 3540;
    portrait_hand[1] = 2058;
    portrait_head[2] = 2116;
    portrait_hand[2] = 2058;
    portrait_head[3] = 3475;
    portrait_hand[3] = 2058;
    portrait_head[4] = 1673;
    portrait_hand[4] = 2058;
    portrait_head[5] = 2087;
    portrait_hand[5] = 2058;
    message_end = 5;
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
