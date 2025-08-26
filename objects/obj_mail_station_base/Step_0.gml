var mail_station_blocked = false;

if (global.geno_complete[2] == true)
    mail_station_blocked = true;

if (keyboard_multicheck_pressed(vk_nokey) && scr_interact() && scene == 0)
{
    scr_cutscene_start();
    image_index = 0;
    image_speed = 0.2;
    audio_play_sound(bell_sound, 1, 0);
    scene++;
}

switch (scene)
{
    case 1:
    case 2:
        if (on_animation_end())
        {
            image_index = 0;
            scene++;
        }
        
        break;
    
    case 3:
        image_speed = 0;
        image_index = 0;
        
        if (mail_station_blocked)
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
        
        var x_distance = 64;
        
        while (!place_free(obj_pl.x + x_distance, obj_pl.y))
            x_distance -= 1;
        
        instance_create(obj_pl.x + x_distance, camera_get_view_y(view_camera[0]) - 40, obj_mail_whale);
        scene = 0;
}
