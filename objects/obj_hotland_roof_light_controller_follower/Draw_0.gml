if (instance_exists(obj_martlet_follower))
{
    var martlet_sprite = 0;
    
    switch (obj_martlet_follower.sprite_index)
    {
        case spr_martlet_up:
            martlet_sprite = 3617;
            break;
        
        case spr_martlet_up_talk:
            martlet_sprite = 2324;
            break;
        
        case spr_martlet_down:
            martlet_sprite = 2486;
            break;
        
        case spr_martlet_down_talk:
            martlet_sprite = 3564;
            break;
        
        case spr_martlet_left:
            martlet_sprite = 3622;
            break;
        
        case spr_martlet_left_talk:
            martlet_sprite = 1469;
            break;
        
        case spr_martlet_right:
            martlet_sprite = 3143;
            break;
        
        case spr_martlet_right_talk:
            martlet_sprite = 3294;
            break;
    }
    
    draw_set_alpha(overlay_draw_alpha_follower);
    draw_sprite(martlet_sprite, obj_martlet_follower.image_index, obj_martlet_follower.x, obj_martlet_follower.y);
    draw_set_alpha(1);
}
