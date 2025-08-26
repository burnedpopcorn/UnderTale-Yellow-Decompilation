for (var current_tube = 0; current_tube < 2; current_tube += 1)
{
    lava_tube_x[current_tube] -= lava_tube_speed;
    
    if (lava_tube_x[current_tube] < -90)
    {
        lava_tube_x[current_tube] = lava_tube_x[abs(current_tube - 1)] + lava_tube_sep;
        
        switch (irandom(5))
        {
            case 0:
                tube_sprite[current_tube] = 924;
                break;
            
            case 1:
                tube_sprite[current_tube] = 926;
                break;
            
            case 2:
                tube_sprite[current_tube] = 927;
                break;
            
            case 3:
                tube_sprite[current_tube] = 929;
                break;
            
            case 4:
                tube_sprite[current_tube] = 930;
                break;
        }
    }
}

__view_set(e__VW.XView, 0, 0);
__view_set(e__VW.YView, 0, 0);
__view_set(e__VW.XView, 0, __view_get(e__VW.XView, 0) + irandom_range(-1, 1));
__view_set(e__VW.YView, 0, __view_get(e__VW.YView, 0) + irandom_range(-1, 1));
