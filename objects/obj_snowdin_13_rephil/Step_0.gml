if (sprite_index == spr_rephil_overworld_yellow && instance_exists(obj_dialogue))
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

if (sprite_index == spr_rephil_turn_away)
{
    if (image_index >= (image_number - 1))
    {
        image_index = image_number - 1;
        image_speed = 0;
    }
}

if (global.snowdin_flag[8] < 5)
{
    if (keyboard_multicheck_pressed(vk_nokey) && scr_interact() == true)
        obj_room_controller_snowdin_13.scene = 1;
}
else if (global.snowdin_flag[8] == 5)
{
    if (keyboard_multicheck_pressed(vk_nokey) && scr_interact())
    {
        scr_text();
        
        with (msg)
        {
            portrait = false;
            talker[0] = obj_snowdin_13_rephil;
            message[0] = "* You spreadin' the word of the#  Shufflers reign yet?";
            message[1] = "* It's pretty nice knowin' we got#  someone out there, ya know?";
            message[2] = "* It's stressful, havin' to run#  the gang an' run our publicity#  too.";
            message[3] = "* An' remember, you ever need#  anything, we'll be here.";
            message[4] = "* There's always more monsters#  that need an inconveniencing,#  ya get me?";
        }
    }
}
