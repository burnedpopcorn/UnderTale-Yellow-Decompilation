clover_launch = 0;

if (global.route == 3)
    sprite_index = spr_waterfall_clover_sit_overworld_yellow_geno;

image_speed = 0;

switch (room)
{
    case rm_hotland:
        sprite_index = spr_clover_sit_dark;
        image_speed = 0.4;
        break;
    
    case rm_lava_tubes:
    case rm_wildeast_cave:
        sprite_index = spr_colver_wind;
        
        if (global.route == 3)
            sprite_index = spr_colver_wind_geno;
        
        image_speed = 0.4;
        break;
}
