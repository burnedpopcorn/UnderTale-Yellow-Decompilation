var pl_sprite = 0;
depth = active_object.depth - 1;

if (global.route == 3)
{
    switch (active_object.sprite_index)
    {
        case spr_pl_up:
            pl_sprite = 3466;
            break;
        
        case spr_pl_down_geno:
            pl_sprite = 3705;
            break;
        
        case spr_pl_left_geno:
            pl_sprite = 3117;
            break;
        
        case spr_pl_right_geno:
            pl_sprite = 2574;
            break;
        
        case spr_pl_up_geno_shoot_roof:
            pl_sprite = 3380;
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
            pl_sprite = 3466;
            break;
        
        case spr_pl_down:
            pl_sprite = 732;
            break;
        
        case spr_pl_left:
            pl_sprite = 620;
            break;
        
        case spr_pl_right:
            pl_sprite = 2617;
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
