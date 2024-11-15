alarm[0] = fadespeed;

if (fadein == false)
    fadealpha += 0.05;

if (fadein == true)
{
    fadealpha -= 0.05;
    
    if (fadealpha <= 0)
        instance_destroy();
}

if (fadealpha >= 1)
{
    room_goto(newRoom);
    fadein = true;
}
