function scr_enemy_attack_bullet_hit()
{
    var collider_id, collider_object_index;
    
    if (live_call())
        return global.live_result;
    
    if (variable_instance_exists(id, "bullet_hit_draw_timer"))
    {
        if (bullet_hit_draw_timer > 0)
            bullet_hit_draw_timer -= 1;
    }
    
    collider_id = instance_place(x, y, obj_heart_yellow_shot);
    
    if (collider_id != -4)
    {
        collider_object_index = collider_id.object_index;
        instance_create_depth(collider_id.x, collider_id.bbox_top, -999, obj_heart_yellow_shot_destroy);
        
        if (collider_object_index == 690)
        {
            if (object_index == obj_ceroba_phase_2_bell)
                instance_destroy(collider_id);
            
            if (variable_instance_exists(id, "collider_id_last") && collider_id_last == collider_id)
                exit;
            
            if (collider_object_index == 690)
                collider_id_last = collider_id;
        }
        else if (collider_object_index == 2561)
        {
            if (variable_instance_exists(id, "collider_id_last") && collider_id_last == collider_id)
                exit;
            
            collider_id_last = collider_id;
        }
        else if (!variable_instance_exists(id, "collider_id_last") || collider_id != collider_id_last)
        {
            collider_id.alarm[0] = 1;
            collider_id.image_alpha = 0;
            collider_id_last = collider_id;
        }
        
        audio_play_sound(snd_arc_hit, 0.1, 0);
        
        if (variable_instance_exists(id, "bullet_hit_points"))
        {
            bullet_hit_draw_timer = 5;
            
            if (collider_object_index == 690)
                bullet_hit_points -= 3;
            else
                bullet_hit_points -= 1;
            
            if (bullet_hit_points <= 0)
                bullet_destroy_self = true;
        }
        
        return true;
    }
}
