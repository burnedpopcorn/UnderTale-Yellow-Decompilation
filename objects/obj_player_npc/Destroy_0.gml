switch (npc_direction)
{
    case "up":
        obj_pl.direction = 90;
        obj_pl.sprite_index = obj_pl.usprite;
        break;
    
    case "right":
        obj_pl.direction = 0;
        obj_pl.sprite_index = obj_pl.rsprite;
        break;
    
    case "down":
        obj_pl.direction = 270;
        obj_pl.sprite_index = obj_pl.dsprite;
        break;
    
    case "left":
        obj_pl.direction = 180;
        obj_pl.sprite_index = obj_pl.lsprite;
        break;
}

obj_pl.image_alpha = 1;
