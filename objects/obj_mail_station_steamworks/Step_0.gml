var x_distance;

if (live_call())
    return global.live_result;

if (keyboard_multicheck_pressed(0) && scr_interact() && scene == 0)
{
    if (global.party_member != -4)
    {
        scr_text();
        
        with (msg)
        {
            sndfnt = 108;
            message[0] = "* Watch it, Clover!";
            message[1] = "* We don't want to alert#  any outsiders.";
            message[2] = "* Especially workers#  under Asgore like the#  UGPS.";
            message[3] = "* Your mail will have to#  wait.";
            prt[0] = 377;
            prt[1] = 370;
            prt[2] = 377;
            prt[3] = 370;
        }
    }
    else if (room == rm_steamworks_24 && global.route == 2 && global.sworks_flag[14] == 1 && global.sworks_flag[15] == 0)
    {
        obj_pl.direction = 0;
        scr_text();
        
        with (msg)
        {
            sndfnt = 108;
            message[0] = "* Watch it, Clover!";
            message[1] = "* We don't want to alert any#  outsiders.";
            message[2] = "* Especially workers under#  Asgore like the UGPS.";
            message[3] = "* Your mail will have to wait.";
        }
    }
    else
    {
        scr_cutscene_start();
        audio_play_sound(bell_sound, 1, 0);
        scene++;
    }
}

if (is_active == false)
{
    if (distance_to_object(obj_pl) < 40)
    {
        is_active = true;
        image_index = 0;
        image_speed = 1;
    }
    else if (image_index <= 0.5)
    {
        image_speed = 0;
        image_index = 0;
    }
}
else if (is_active == true)
{
    if (distance_to_object(obj_pl) > 50)
    {
        is_active = false;
        image_index = 7;
        image_speed = -1;
    }
    else if (image_index >= (image_number - 1))
    {
        image_speed = 0;
        image_index = image_number - 1;
    }
}

switch (scene)
{
    case 1:
        if (global.geno_complete[2])
        {
            scr_text();
            
            with (msg)
                message[0] = "* But nobody came.";
            
            if (!global.dialogue_open)
            {
                scene = 0;
                scr_cutscene_end();
            }
            
            exit;
        }
        
        x_distance = 64;
        instance_create(obj_pl.x + x_distance, camera_get_view_y(view_camera[0]) - 40, obj_mail_whale);
        scene = 0;
        break;
}
