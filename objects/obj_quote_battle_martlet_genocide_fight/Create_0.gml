var turns_passed;

text_effect = "twitchy";
transform = false;
transforming = false;
turns_passed = global.turns_passed;

if (turns_passed == 0)
{
    if (global.enemy_mode_previous == 4)
    {
        transform = true;
        message[0] = "Of course. I see how#it is.";
        portrait_head[0] = 2643;
        portrait_hand[0] = 2058;
        message_end = 0;
        global.action_1_important = false;
        global.action_1_color = c_white;
    }
    else
    {
        message[0] = "So you can take a hit.";
        message[1] = "I'm sorry to hear#that.";
        message[2] = "That means I'll just#have to hit harder!";
        portrait_head[0] = 3526;
        portrait_hand[0] = 2074;
        portrait_head[1] = 3526;
        portrait_hand[1] = 2074;
        portrait_head[2] = 3526;
        portrait_hand[2] = 2074;
        message_end = 2;
    }
}
else if (turns_passed == 1)
{
    message[0] = "You know, I'm almost#glad you attacked#me\twhen you did.";
    message[1] = "If you had waited,#I might have told you#where the others went.";
    message[2] = "But now you'll never#find them.";
    portrait_head[0] = 3526;
    portrait_hand[0] = 2074;
    portrait_head[1] = 3526;
    portrait_hand[1] = 2074;
    portrait_head[2] = 2087;
    portrait_hand[2] = 2074;
    message_end = 2;
}
else if (turns_passed == 2)
{
    message[0] = "This whole thing is a#tragedy.";
    message[1] = "And the saddest part#is that there was no#need for it.";
    message[2] = "They say monsters are#made of love, hope,#and compassion.";
    message[3] = "We would have agreed#to help you in a#heartbeat!";
    portrait_head[0] = 3526;
    portrait_hand[0] = 2074;
    portrait_head[1] = 3475;
    portrait_hand[1] = 2074;
    portrait_head[2] = 3475;
    portrait_hand[2] = 2074;
    portrait_head[3] = 3475;
    portrait_hand[3] = 2074;
    message_end = 3;
}
else if (turns_passed == 3)
{
    message[0] = "But you wouldn't#understand that.";
    message[1] = "You're no monster.";
    message[2] = "I know what you are...";
    message[3] = "...and it's something#I fear is much#worse.";
    message[4] = "It's that hat of#yours that gives#you away.";
    message[5] = "You're a human through#and through.";
    portrait_head[0] = 3526;
    portrait_hand[0] = 2074;
    portrait_head[1] = 3526;
    portrait_hand[1] = 2074;
    portrait_head[2] = 3526;
    portrait_hand[2] = 2074;
    portrait_head[3] = 3526;
    portrait_hand[3] = 2074;
    portrait_head[4] = 3526;
    portrait_hand[4] = 2074;
    portrait_head[5] = 2905;
    portrait_hand[5] = 2074;
    message_end = 5;
}
else if (turns_passed == 4)
{
    message[0] = "I want you to know,#I don't hate your#kind.";
    message[1] = "There's gotta be#nice humans out#there.";
    message[2] = "Or at least#somewhat reasonable#humans.";
    message[3] = "I hoped that was#you...";
    portrait_head[0] = 3475;
    portrait_hand[0] = 2074;
    portrait_head[1] = 1673;
    portrait_hand[1] = 2074;
    portrait_head[2] = 1673;
    portrait_hand[2] = 2074;
    portrait_head[3] = 3526;
    portrait_hand[3] = 2074;
    message_end = 3;
}
else if (turns_passed == 5)
{
    message[0] = "You're still trying?";
    message[1] = "Pretty... determined#there, aren't you.";
    message[2] = "Luckily, so am I.";
    portrait_head[0] = 3526;
    portrait_hand[0] = 2074;
    portrait_head[1] = 3526;
    portrait_hand[1] = 2074;
    portrait_head[2] = 2087;
    portrait_hand[2] = 2074;
    message_end = 2;
}
else if (turns_passed == 6)
{
    message[0] = "...";
    portrait_head[0] = 3526;
    portrait_hand[0] = 2074;
    message_end = 0;
}
else if (turns_passed == 7)
{
    message[0] = "Why... won't you back#down?";
    portrait_head[0] = 3526;
    portrait_hand[0] = 2074;
    message_end = 0;
}
else if (turns_passed == 8)
{
    text_effect = "circle";
    message[0] = "*huff* *huff*";
    portrait_head[0] = 1291;
    portrait_hand[0] = 2074;
    message_end = 0;
}
else if (turns_passed >= 9)
{
    message[0] = "...";
    portrait_head[0] = 3526;
    portrait_hand[0] = 2074;
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
