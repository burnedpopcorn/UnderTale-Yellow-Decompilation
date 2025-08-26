event_inherited();

if (interact == 1)
{
    scr_text();
    
    switch (npc_flag)
    {
        case 0:
            with (msg)
            {
                portrait = false;
                message[0] = "* Huumpf! 238...";
                message[1] = "* Huumpf! 239...";
                message[2] = "* At this pace, Ice Wolf#  is ready for new job#  in no time!";
            }
            
            npc_flag += 1;
            break;
        
        case 1:
            with (msg)
            {
                portrait = false;
                message[0] = "* New job is very important#  for Ice Wolf.";
                message[1] = "* Ice Wolf needs money for#  new pants.";
            }
            
            npc_flag += 1;
            break;
        
        case 2:
            with (msg)
            {
                portrait = false;
                sndfnt = sndfnt_default;
                message[0] = "* Huumpf!";
            }
            
            break;
    }
}

image_speed = 0.2;

if (floor(image_index) == 3)
    obj_ice_blocks.image_index = 1;
else
    obj_ice_blocks.image_index = 0;

if (floor(image_index) == 9)
{
    if (!alarm[0])
    {
        alarm[0] = 10;
        instance_create(x, y - 40, obj_ice_cube);
    }
}
