var actor_toriel, distance_to_clover;

actor_toriel = 1159;
distance_to_clover = 80;

with (actor_toriel)
{
    if (y <= 100)
    {
        image_speed = 0;
        image_index = 0;
        image_alpha -= 0.1;
        path_speed = 0;
        
        if (image_alpha < 0)
            instance_destroy();
        
        global.ruins_flag[1] = true;
        exit;
    }
    
    if ((obj_pl.y - y) < distance_to_clover)
    {
        if (path_index == -1)
            path_start(pt_toriel_ruins02, 3, path_action_stop, false);
        
        action_sprite = true;
        path_speed = 3 + (obj_pl.is_sprinting * 2);
        image_speed = 0.2;
    }
    else if ((obj_pl.y - y) > (distance_to_clover + 20))
    {
        action_sprite = false;
        npc_direction = "down";
        path_speed = 0;
        image_speed = 0;
        image_index = 0;
    }
    
    if (path_speed > 0)
    {
        if (direction == 0 && sprite_index != right_sprite)
            sprite_index = right_sprite;
        
        if (direction != 0 && sprite_index != up_sprite)
            sprite_index = up_sprite;
    }
}
