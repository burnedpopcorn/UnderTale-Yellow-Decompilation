var msg;

if (scr_interact() && keyboard_multicheck_pressed(0))
{
    if (!instance_exists(obj_flowey_world_text))
    {
        msg = instance_create_depth(0, 0, -9999, obj_flowey_world_text);
        
        with (msg)
        {
            talker[0] = 1159;
            message[0] = "* Oh no, my child! That#  is the wrong switch.\t";
            message[1] = "* I have labelled the one#  you need to flip.";
            soundfont = 97;
        }
    }
}
