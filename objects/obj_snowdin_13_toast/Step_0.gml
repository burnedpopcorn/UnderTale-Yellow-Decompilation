if (sprite_index == spr_toast_overworld_yellow && instance_exists(obj_dialogue))
{
    if (is_talking == true)
    {
        if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
        {
            image_speed = 0;
            image_index = 0;
        }
        else
        {
            image_speed = 0.2;
        }
    }
    else
    {
        image_speed = 0;
        image_index = 0;
    }
}
else
{
    is_talking = false;
}

if (sprite_index == spr_toast_turn_overworld_yellow)
{
    if (image_index >= (image_number - 1))
    {
        image_speed = 0;
        sprite_index = spr_toast_overworld_yellow;
    }
}

if (sprite_index == spr_toast_turn_away)
{
    if (image_index >= (image_number - 1))
    {
        image_speed = 0;
        image_index = image_number - 1;
    }
}

if (global.snowdin_flag[8] == 5)
{
    if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
    {
        scr_text();
        
        with (msg)
        {
            talker[0] = obj_snowdin_13_toast;
            message[0] = "* You're in the Shufflers#  neighborhood now.";
            message[1] = "* Ya wanna pass through here, ya#  gonna have to get through us.";
            message[2] = "* We got a real hard game for you.";
            message[3] = "* Only one monster eva got past#  us.";
            message[4] = "* ...";
            message[5] = "* Oh, that was you, wasn't it.";
            message[6] = "* Sorry 'bout that...";
        }
    }
}
