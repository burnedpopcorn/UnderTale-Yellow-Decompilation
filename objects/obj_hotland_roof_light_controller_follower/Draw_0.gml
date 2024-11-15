var martlet_sprite;

if (instance_exists(obj_martlet_follower))
{
    martlet_sprite = spr_collisionbox;
    
    switch (obj_martlet_follower.sprite_index)
    {
        case spr_martlet_up:
            martlet_sprite = spr_martlet_up_roof;
            break;
        
        case spr_martlet_up_talk:
            martlet_sprite = spr_martlet_up_talk_roof;
            break;
        
        case spr_martlet_down:
            martlet_sprite = spr_martlet_down_roof;
            break;
        
        case spr_martlet_down_talk:
            martlet_sprite = spr_martlet_down_talk_roof;
            break;
        
        case spr_martlet_left:
            martlet_sprite = spr_martlet_left_roof;
            break;
        
        case spr_martlet_left_talk:
            martlet_sprite = spr_martlet_left_talk_roof;
            break;
        
        case spr_martlet_right:
            martlet_sprite = spr_martlet_right_roof;
            break;
        
        case spr_martlet_right_talk:
            martlet_sprite = spr_martlet_right_talk_roof;
            break;
    }
    
    draw_set_alpha(overlay_draw_alpha_follower);
    draw_sprite(martlet_sprite, obj_martlet_follower.image_index, obj_martlet_follower.x, obj_martlet_follower.y);
    draw_set_alpha(1);
}
