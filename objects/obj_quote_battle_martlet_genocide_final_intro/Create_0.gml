text_effect = "twitchy";
attack = false;
scene = 0;
cutscene_timer = 0;
skippable = true;
message_adv = false;
fade_out_gui = true;
var turns_passed = global.turns_passed;
message[0] = "Not wasting any#time, huh?";
message[1] = "...";
message[2] = "You know...";
message[3] = "My whole life...";
message[4] = "My whole life,#I was taught#that humans are#the enemy.";
message[5] = "The truth stared right#at me but I chose#to look away.";
message[6] = "I tried to see the#good - I wanted to#believe it wasn't#true.";
message[7] = "But you... ";
message[8] = "Any ounce of \"good\"#you ever had is#six feet under.";
message[9] = "I don't care if your#motivation was#\"noble.\"";
message[10] = "I don't care if it#was only your twisted#idea of fun.";
message[11] = "Nothing can justify#your sins.";
message[12] = "I ran... ";
message[13] = "Twice I could've done#something different.#Tried harder.";
message[14] = "...Prevented so many#deaths.";
message[15] = "But I knew that#chance was slim.";
message[16] = "I'm far too limited#in my current state.";
message[17] = "But now...";
message[18] = "This is my#responsibility alone.";
message[19] = "You should've finished#me when you had the#chance.";
message[20] = "*Pant pant*";
message[21] = "Clover... ";
message[22] = "Your terror...";
message[23] = "Ends NOW!!!";
message_end = 23;
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

if (global.hotland_flag[9] > 0)
{
    scene = 20;
    instance_destroy(obj_martlet_final_body_intro);
    draw_enabled = false;
    
    with (instance_create_depth(320, 100, 10, obj_martlet_final_base))
        y = martlet_y_target;
    
    scr_battle_box_resize_midfight(140, 140);
}
