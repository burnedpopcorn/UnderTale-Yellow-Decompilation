if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

switch (scene)
{
    case 0:
        if (scr_battle_box_resize_midfight(128, 128))
            cutscene_advance();
        
        break;
    
    case 1:
        instance_create_depth(battle_box.x, battle_box.bbox_top - 60, -1100, obj_ceroba_phase_2_opener_lamp);
        cutscene_advance();
        break;
    
    case 2:
        if (!instance_exists(obj_ceroba_phase_2_opener_lamp))
            cutscene_advance();
        
        break;
    
    case 3:
        cutscene_wait(1);
        break;
    
    case 4:
        var mask = instance_create_depth(battle_box.bbox_right + 18, battle_box.bbox_top - 18, -100, obj_ceroba_attack_bullet_trail_mask);
        mask.direction = 270;
        cutscene_advance();
        break;
    
    case 5:
        cutscene_wait(0.5);
        break;
    
    case 6:
        var mask = instance_create_depth(battle_box.bbox_left - 18, battle_box.bbox_bottom + 18, -100, obj_ceroba_attack_bullet_trail_mask);
        mask.direction = 90;
        cutscene_advance();
        break;
    
    case 7:
        if (!instance_exists(obj_ceroba_attack_bullet_trail_mask))
            cutscene_wait(1);
        
        break;
    
    case 8:
        var mask = instance_create_depth(battle_box.bbox_right + 18, battle_box.bbox_bottom + 18, -100, obj_ceroba_attack_bullet_trail_mask);
        mask.direction = 180;
        cutscene_advance();
        break;
    
    case 9:
        cutscene_wait(0.5);
        break;
    
    case 10:
        var mask = instance_create_depth(battle_box.bbox_left - 18, battle_box.bbox_top - 18, -100, obj_ceroba_attack_bullet_trail_mask);
        mask.direction = 0;
        cutscene_advance();
        break;
    
    case 11:
        cutscene_wait(2);
        break;
    
    case 12:
        if (scr_battle_box_resize_midfight(50, 128))
            cutscene_wait(0.5);
        
        break;
    
    case 13:
        cutscene_instance_create(0, 0, obj_battle_enemy_attack_ceroba_phase_2_obstacle_spawn);
        break;
    
    case 14:
        if (!variable_instance_exists(id, "bullet_count"))
            bullet_count = 6;
        
        if (cutscene_wait(1))
        {
            if (bullet_count > 0)
            {
                cutscene_advance(13);
                bullet_count--;
            }
            else
            {
                if (scr_battle_box_resize_midfight(128, 128))
                    cutscene_advance(15);
                
                break;
            }
        }
        
        break;
    
    case 15:
        cutscene_instance_create(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_ceroba_flower_circle_half_spawner);
        break;
    
    case 16:
        if (!variable_instance_exists(id, "circle_count"))
            circle_count = 3;
        
        if (cutscene_wait(2))
        {
            if (circle_count > 0)
            {
                cutscene_advance(15);
                circle_count--;
            }
            else
            {
                cutscene_advance(17);
            }
        }
        
        break;
    
    case 17:
        obj_ceroba_body_pacifist_phase_2.sprite_index = spr_ceroba_p2_idle_reveal;
        obj_ceroba_body_pacifist_phase_2.image_index = 0;
        obj_ceroba_body_pacifist_phase_2.image_speed = 1;
        cutscene_advance();
        break;
    
    case 18:
        if (obj_ceroba_body_pacifist_phase_2.image_index >= 9)
        {
            obj_ceroba_body_pacifist_phase_2.image_speed = 0;
            obj_heart_battle_fighting_parent.moveable = false;
            cutscene_advance();
        }
        
        break;
    
    case 19:
        with (obj_heart_battle_fighting_parent)
        {
            var xtarget = battle_box.x;
            var ytarget = battle_box.bbox_bottom - 12;
            x = lerp(x, xtarget, 0.3);
            vspeed = 10;
            
            if (y >= ytarget)
            {
                y = ytarget;
                vspeed = 0;
                other.scene++;
                audio_play_sound(snd_undertale_impact, 1, 0);
                scr_screenshake_battle(1, 2);
            }
        }
        
        break;
    
    case 20:
        cutscene_instance_create(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_battle_enemy_attack_ceroba_flower_circle_opener);
        break;
    
    case 21:
        with (obj_heart_battle_fighting_parent)
        {
            var xtarget = battle_box.x;
            var ytarget = battle_box.y;
            x = lerp(x, xtarget, 0.15);
            y = lerp(y, ytarget, 0.15);
            
            if (abs(x - xtarget) < 0.01 && abs(y - ytarget) < 0.01)
            {
                x = xtarget;
                y = ytarget;
                obj_ceroba_body_pacifist_phase_2.image_speed = 1;
                other.scene++;
            }
        }
        
        break;
    
    case 22:
        if (!instance_exists(obj_battle_enemy_attack_ceroba_flower_circle_opener))
            cutscene_advance();
        
        break;
    
    case 23:
        cutscene_wait(1.5);
        break;
    
    case 24:
        instance_create_depth(obj_ceroba_body_pacifist_phase_2.x, 110, -9999, obj_ceroba_phase_2_shield_reappear);
        cutscene_advance();
        break;
    
    case 25:
        cutscene_wait(1.5);
        break;
    
    case 26:
        instance_destroy();
        break;
}
