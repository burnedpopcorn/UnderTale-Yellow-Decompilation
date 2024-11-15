event_inherited();

if (interact == 1 && scene == 0)
{
    scr_cutscene_start();
    scene = 1;
}

if (!instance_exists(obj_dialogue))
{
    switch (scene)
    {
        case 1:
            scr_text();
            is_talking = true;
            
            with (msg)
            {
                portrait = false;
                message[0] = "* Hello. This is MARTLET.";
                message[1] = "* Just kidding, I'm TESTLET.#* I'm here to show you#  how I can walk around.";
                message[2] = "* Watch and learn, kiddo!";
            }
            
            scene++;
            break;
        
        case 2:
            if (arrived == 1)
                scene++;
            
            break;
        
        case 3:
            scr_text();
            is_talking = true;
            
            with (msg)
            {
                portrait = false;
                message[0] = "* I bet you can't walk#  like that, scrub.";
                message[1] = "* Testlet, out!";
            }
            
            scene++;
            break;
        
        case 4:
            action_sprite = true;
            sprite_index = martlet_fly_away;
            image_speed = 0.5;
            scene++;
            break;
        
        case 5:
            if (action_sprite == false)
            {
                scr_cutscene_end();
                instance_destroy();
            }
            
            break;
    }
}
