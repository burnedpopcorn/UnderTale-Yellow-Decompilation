var pl_sprite;

pl_sprite = spr_collisionbox;
depth = active_object.depth - 1;

if (global.route == 3)
{
    switch (active_object.sprite_index)
    {
        case spr_pl_up:
            pl_sprite = spr_pl_up_roof;
            break;
        
        case spr_pl_down_geno:
            pl_sprite = spr_pl_down_roof_geno;
            break;
        
        case spr_pl_left_geno:
            pl_sprite = spr_pl_left_roof_geno;
            break;
        
        case spr_pl_right_geno:
            pl_sprite = spr_pl_right_roof_geno;
            break;
        
        case spr_pl_up_geno_shoot_roof:
            pl_sprite = spr_pl_up_geno_shoot_roof;
            break;
        
        default:
            pl_sprite = -4;
            exit;
            break;
    }
}
else
{
    switch (active_object.sprite_index)
    {
        case spr_pl_up:
            pl_sprite = spr_pl_up_roof;
            break;
        
        case spr_pl_down:
            pl_sprite = spr_pl_down_roof;
            break;
        
        case spr_pl_left:
            pl_sprite = spr_pl_left_roof;
            break;
        
        case spr_pl_right:
            pl_sprite = spr_pl_right_roof;
            break;
        
        default:
            pl_sprite = -4;
            exit;
            break;
    }
}

draw_set_alpha(overlay_draw_alpha);
draw_sprite(pl_sprite, active_object.image_index, active_object.x, active_object.y);
draw_set_alpha(1);
