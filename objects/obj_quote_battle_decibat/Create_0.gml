execute_normal = false;
execute_random = false;
color_count = 0;

if (global.enemy_low_hp == true)
{
    message[0] = "NO NO! NOISE#HURTS! NOISE#HURTS!";
    message_end = 0;
    audio_sound_gain(mus_decibat_yellow, 1, 1500);
}
else if ((global.action_1_selected_count + global.action_3_selected_count) == 5)
{
    message[0] = "Getting too loud#here! HUSHH#HUSHH!";
    message_end = 0;
}
else if (global.action_2_selected_count == 5)
{
    message[0] = "Sweet silence...";
    message_end = 0;
}
else if (global.action_2_selected_count == 4)
{
    message[0] = "You hhear that?#No? Good...";
    message_end = 0;
}
else if (global.action_2_selected_count == 3)
{
    message[0] = "More quiet#please...";
    message_end = 0;
}
else if (global.enemy_attack == "Decibat Wave Blue")
{
    message[0] = "           #Don't make a#sound.#Hush hushh!";
    message_2[0] = "Don't move.#            #      #             ";
    message_end = 0;
    color_count = 1;
}
else if (global.enemy_attack == "Decibat Wave Orange")
{
    message[0] = "     in silence.#Hushh hushh!";
    message_2[0] = "Move            #            ";
    message_end = 0;
    color_count = 1;
}
else
{
    random_number = irandom_range(0, 2);
    
    if (random_number == 0)
    {
        message[0] = "Don't shhy away.#Hushh hushh!";
        message_end = 0;
    }
    else if (random_number == 1)
    {
        message[0] = "Whhispers only#please. Hushh#hushh!";
        message_end = 0;
    }
    else if (random_number == 2)
    {
        message[0] = "Hushh puppy!";
        message_end = 0;
    }
}

message_current = 0;
message_draw = "";
message_draw_2 = "";
increase = global.text_speed;
characters = 0;
hold = 0;
message_length = string_length(message[message_current]);
script_execute(scr_generate_text_counters);

if (global.enemy_low_hp == true)
    obj_decibat_head.image_index = 11;
else if ((global.action_1_selected_count + global.action_3_selected_count) >= 5)
    obj_decibat_head.image_index = 10;
else if ((global.action_1_selected_count + global.action_3_selected_count) == 4)
    obj_decibat_head.image_index = 9;
else if ((global.action_1_selected_count + global.action_3_selected_count) == 3)
    obj_decibat_head.image_index = 8;
else if ((global.action_1_selected_count + global.action_3_selected_count) == 2)
    obj_decibat_head.image_index = 7;
else if ((global.action_1_selected_count + global.action_3_selected_count) == 1)
    obj_decibat_head.image_index = 6;
else if (global.action_2_selected_count >= 4)
    obj_decibat_head.image_index = 4;
else if (global.action_2_selected_count == 3)
    obj_decibat_head.image_index = 3;
else if (global.action_2_selected_count == 2)
    obj_decibat_head.image_index = 2;
else if (global.action_2_selected_count == 1)
    obj_decibat_head.image_index = 1;
