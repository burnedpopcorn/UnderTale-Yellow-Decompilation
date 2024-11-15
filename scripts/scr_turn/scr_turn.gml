function scr_turn()
{
    if (obj_pl.direction == 0)
        direction = 180;
    
    if (obj_pl.direction == 90)
        direction = 270;
    
    if (obj_pl.direction == 180)
        direction = 0;
    
    if (obj_pl.direction == 270)
        direction = 90;
}
