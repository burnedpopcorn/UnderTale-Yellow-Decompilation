var x_target, y_target, collider_id, xp, yp;

if (live_call())
    return global.live_result;

if (mask_is_vulnerable)
{
    x_target = (obj_ceroba_body_pacifist_phase_2.x - sprite_get_xoffset(obj_ceroba_body_pacifist_phase_2.sprite_index)) + 330;
    y_target = (obj_ceroba_body_pacifist_phase_2.y - sprite_get_yoffset(obj_ceroba_body_pacifist_phase_2.sprite_index)) + 259;
    x = x_target;
    y = y_target;
    collider_id = instance_place(x, y, obj_heart_yellow_shot);
    
    if (collider_id != -4)
    {
        audio_play_sound(snd_arc_hit, 1, 0);
        x += random_range(-2, 2);
        y += random_range(-2, 2);
        instance_create_depth(collider_id.x, collider_id.y - collider_id.sprite_height, -999, obj_heart_yellow_shot_destroy);
        bullet_hit_draw_timer = 5;
        
        if (collider_id.object_index == obj_heart_yellow_shot_big)
            mask_hit_points -= 3;
        else
            mask_hit_points -= 1;
        
        instance_destroy(collider_id);
        xp = x;
        yp = y;
        part_emitter_region(mask_ps, mask_pe_effect_1, xp - 1, xp + 1, yp - 1, yp + 1, 0, 0);
        part_emitter_burst(mask_ps, mask_pe_effect_1, mask_pt_effect_1, 4);
        
        if (mask_hit_points <= 0)
        {
            if (global.hotland_flag[2] < 3)
            {
                audio_play_sound(snd_rock_break, 1, 0);
                scr_screenshake_battle(6, 2);
                
                if (global.hotland_flag[2] == 1)
                    sprite_index = spr_ceroba_mask_2;
                
                if (global.hotland_flag[2] == 2)
                    sprite_index = spr_ceroba_mask_3;
                
                mask_new = instance_create_depth(x_target, y_target, depth, obj_ceroba_mask_overworld_transition);
                mask_new.sprite_index = sprite_index;
                part_emitter_burst(mask_ps, mask_pe_effect_1, mask_pt_effect_1, 6);
                instance_destroy();
            }
            else
            {
                instance_create_depth(x, y, depth, obj_battle_enemy_ceroba_phase_2_outro);
            }
        }
    }
    
    audio_sound_gain(global.battle_music, mask_hit_points / mask_hit_points_max, 500);
    
    if (variable_instance_exists(id, "bullet_hit_draw_timer"))
    {
        if (bullet_hit_draw_timer > 0)
            bullet_hit_draw_timer -= 1;
    }
    
    exit;
}

if (instance_exists(obj_ceroba_body_pacifist_phase_1))
{
    switch (obj_ceroba_body_pacifist_phase_1.sprite_index)
    {
        case spr_ceroba_transformation_p1_7:
            attach_points = [[-400, -400], [148, 114], [149, 110], [149, 106], [148, 140], [147, 146], [147, 150], [147, 146], [147, 150], [147, 150], [147, 146], [147, 150], [147, 150], [147, 146], [147, 150], [147, 150], [147, 146], [147, 150], [-400, -400], [-400, -400], [-400, -400], [-400, -400], [-400, -400], [145, 86], [145, 86], [145, 86], [145, 86], [145, 86], [145, 84], [145, 84], [145, 82]];
            scr_point_attach(attach_points, 773);
            break;
        
        default:
            break;
    }
}

if (instance_exists(obj_ceroba_body_pacifist_phase_2))
{
    switch (obj_ceroba_body_pacifist_phase_2.sprite_index)
    {
        case spr_ceroba_p2_1:
            exit;
            break;
        
        case -4:
            attach_points = [[-1, -174]];
            break;
        
        case spr_ceroba_p2_sign:
            attach_points = [[321, 167], [321, 167], [321, 163], [321, 147], [321, 155], [323, 173], [323, 181], [323, 181], [323, 179], [323, 177], [323, 173], [323, 171], [321, 169]];
            break;
        
        case spr_ceroba_p2_knocked_down:
            attach_points = [[-400, -400], [-400, -400], [-400, -400], [-400, -400], [-400, -400], [-400, -400], [-400, -400], [-400, -400], [-400, -400], [-400, -400], [330, 265], [330, 271], [330, 264], [330, 261], [330, 259]];
            break;
        
        case spr_ceroba_p2_knocked_down_loop:
            attach_points = [[330, 259]];
            break;
        
        case spr_ceroba_p2_get_up_1:
            if (obj_ceroba_body_pacifist_phase_2.image_index > 40)
                sprite_index = spr_ceroba_mask_2;
            
            attach_points = [[330, 259], [330, 259], [330, 259], [330, 259], [330, 259], [330, 259], [330, 259], [334, 253], [335, 253], [333, 253], [333, 253], [329, 267], [330, 263], [330, 261], [330, 257], [330, 257], [330, 257], [330, 257], [330, 257], [330, 257], [330, 257], [330, 257], [330, 257], [330, 257], [330, 257], [329, 271], [329, 283], [-400, -400]];
            break;
        
        default:
            attach_points = [[-4000, -4000]];
            break;
    }
    
    scr_point_attach(attach_points, 2833);
}
