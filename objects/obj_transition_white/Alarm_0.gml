alarm[0] = fadespeed;

if (fadein == false)
    fadealpha += 0.007;

if (fadein == true)
{
    fadealpha -= 0.1;
    
    if (fadealpha <= 0)
    {
        instance_destroy();
        
        if (instance_exists(obj_pl))
            obj_pl.alarm[0] = 5;
    }
}
