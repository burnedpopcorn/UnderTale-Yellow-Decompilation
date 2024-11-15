if (obj_snowdin_19_watermeter.image_speed != 0 || (instance_exists(obj_snowdin_19_icecube) && obj_snowdin_19_icecube.shrink == true))
    exit;

if (keyboard_multicheck_pressed(0) && scr_interact())
{
    if (waiter == 0)
    {
        if (global.snowdin_flag[12] < 2)
        {
            cam = instance_create(obj_pl.x, obj_pl.y, obj_camera);
            __view_set(e__VW.Object, 0, obj_camera);
            direction = 0;
            scr_cutscene_start();
            audio_play_sound(snd_puzzle_start, 1, 0);
            global.text_box_open = false;
            waiter = 1;
        }
        else if (global.snowdin_flag[12] == 2)
        {
            scr_text();
            
            with (msg)
            {
                sndfnt = 99;
                portrait = false;
                message[0] = "* The switch won't budge anymore.";
            }
            
            waiter = 5;
        }
    }
}

if (waiter == 1)
{
    if (scr_camera_move(obj_pl.x, 90, 3) == true)
        waiter = 3;
}

if (waiter == 2 && cam.x > 260)
{
    cam.hspeed = 0;
    waiter = 3;
}

if (waiter == 3)
{
    obj_puzzle_controller_snowdin_19_overworld_yellow.active = true;
    waiter = 4;
}

if (waiter == 5 && !instance_exists(obj_dialoguebox))
    waiter = 0;

if (timer > 0)
{
    timer--;
}
else if (timer != -1)
{
    waiter = 4;
    timer = -1;
}
