draw_self();

switch (global.sworks_flag[1])
{
    case 1:
        if (global.route != 3)
            draw_sprite(spr_steamworks_04_generator_overlay, 0, x, y);
        
        break;
    
    case 2:
        if (global.route != 3)
            draw_sprite(spr_steamworks_04_generator_overlay, 1, x, y);
        
        break;
    
    case 3:
        if (global.route != 3)
            draw_sprite(spr_steamworks_04_generator_overlay, 2, x, y);
        
        break;
}
