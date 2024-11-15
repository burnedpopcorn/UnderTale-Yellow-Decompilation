var turns_passed;

text_effect = "twitchy";
attack = false;
turns_passed = global.turns_passed;

if (turns_passed == 0)
{
    message[0] = "Umm... I don't think#I'm supposed to be#helping you, but...#that was supposed to#be your turn...";
    message[1] = "It's okay, I space#out and miss stuff#like that all the#time! I'll let you go#again!";
    portrait_head[0] = 2116;
    portrait_hand[0] = 2058;
    portrait_head[1] = 126;
    portrait_hand[1] = 2058;
    message_end = 1;
}
else if (turns_passed == 1)
{
    message[0] = "Uh... I - h-hold on,#I have the guide book#on me.";
    message[1] = "I'll check what to do#when someone doesn't#actually attack.";
    message[2] = "You can just...#uhhhh...";
    message[3] = "Take another turn! Go#for it! Hit me as#hard as you can!";
    portrait_head[0] = 2116;
    portrait_hand[0] = 2058;
    portrait_head[1] = 2116;
    portrait_hand[1] = 2058;
    portrait_head[2] = 314;
    portrait_hand[2] = 2058;
    portrait_head[3] = 2087;
    portrait_hand[3] = 2058;
    message_end = 3;
}
else if (turns_passed == 2)
{
    message[0] = "Uh-okay, I'm really#sorry for the wait.#I'm looking.";
    message[1] = "I'm not the best Royal#Guard ya know, but#I'm really trying to#be better!";
    message[2] = "Last week I#apprehended this girl:";
    message[3] = "Total human!";
    message[4] = "Oh, I think it's your#turn.";
    portrait_head[0] = 3475;
    portrait_hand[0] = 2058;
    portrait_head[1] = 2116;
    portrait_hand[1] = 2058;
    portrait_head[2] = 126;
    portrait_hand[2] = 2058;
    portrait_head[3] = 3235;
    portrait_hand[3] = 2058;
    portrait_head[4] = 3540;
    portrait_hand[4] = 2058;
    message_end = 4;
}
else if (turns_passed == 3)
{
    attack = true;
    message[0] = "Aha! Royal Guards are#to proceed to the next#step without#hesitation!";
    message[1] = "Oh... does that count#as hesitation?";
    message[2] = "What? Protocol two!#My attack!";
    portrait_head[0] = 126;
    portrait_hand[0] = 2058;
    portrait_head[1] = 3561;
    portrait_hand[1] = 2058;
    portrait_head[2] = 3540;
    portrait_hand[2] = 2058;
    message_end = 2;
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
