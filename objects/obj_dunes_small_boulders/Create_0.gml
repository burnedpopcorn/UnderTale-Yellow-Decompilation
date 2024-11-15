image_index = irandom_range(3, 6);
image_speed = 0;

switch (image_index)
{
    case 3:
        vspeed -= 4.5;
        break;
    
    case 4:
        vspeed -= 4;
        break;
    
    case 5:
        vspeed -= 3.5;
        break;
    
    case 6:
        vspeed -= 3;
        break;
}

hspeed = choose(-1, 1);
grav = 0.2;
depth = -room_height - 1;
depth = -room_height;
