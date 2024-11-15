var first_time, demo_check;

if (keyboard_multicheck_pressed(0))
{
    instance_destroy();
    
    with (obj_yellowlogoINTRO)
        instance_destroy();
    
    first_time = false;
    
    if (!file_exists("Save.sav"))
        first_time = true;
    
    if (file_exists("Save.sav"))
    {
        demo_check = false;
        ini_open("Save.sav");
        demo_check = ini_key_exists("Save1", "Progress");
        
        if (demo_check)
            first_time = true;
        
        ini_close();
        
        if (demo_check)
            file_rename("Save.sav", "Savedemo.sav");
    }
    
    if (first_time)
        room_goto(rm_mmfirst);
    else
        room_goto(rm_mainmenu);
    
    audio_stop_sound(mus_intronoise);
}
