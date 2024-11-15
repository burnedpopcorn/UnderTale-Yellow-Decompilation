var random_number;

text_effect = "twitchy";
random_number = irandom_range(1, 3);

if (random_number == 1)
{
    message[0] = "We gotta stop wasting#time!";
    message[1] = "It's not safe here!";
    portrait_head[0] = 3526;
    portrait_hand[0] = 2058;
    portrait_head[1] = 1673;
    portrait_hand[1] = 2058;
    message_end = 1;
}
else if (random_number == 2)
{
    message[0] = "This is serious! Let's#get you out of here!";
    message[1] = "I don't know how long#we have before...#let's hurry okay?";
    portrait_head[0] = 3526;
    portrait_hand[0] = 2058;
    portrait_head[1] = 1291;
    portrait_hand[1] = 2058;
    message_end = 1;
}
else if (random_number == 3)
{
    message[0] = "I'm sorry to rush you#like this but...";
    message[1] = "We really gotta get#going!";
    portrait_head[0] = 314;
    portrait_hand[0] = 2058;
    portrait_head[1] = 1291;
    portrait_hand[1] = 2058;
    message_end = 1;
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
