if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;

switch (scene)
{
    case 0:
        instance_destroy(obj_ceroba_transformation_mask);
        
        with (obj_heart_yellow_shot)
            instance_destroy();
        
        audio_play_sound(snd_ceroba_p2_block, 1, 0);
        obj_ceroba_body_pacifist_phase_2.sprite_index = spr_ceroba_p2_block;
        obj_ceroba_body_pacifist_phase_2.image_index = 0;
        obj_ceroba_body_pacifist_phase_2.image_speed = 1;
        scene++;
        break;
    
    case 1:
        cutscene_wait(2);
        break;
    
    case 2:
        obj_heart_battle_fighting_yellow_final.is_charging = false;
        obj_heart_battle_fighting_parent.moveable = false;
        obj_heart_battle_fighting_yellow_final.can_shoot = true;
        scene++;
        break;
    
    case 3:
        cutscene_wait(1);
        break;
    
    case 4:
        obj_heart_battle_fighting_parent.image_alpha = 0;
        instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, obj_heart_battle_fighting_parent.depth, obj_ceroba_transformation_soul);
        obj_ceroba_transformation_soul.sprite_index = obj_heart_battle_fighting_parent.sprite_index;
        
        with (obj_heart_yellow_shot)
            instance_destroy();
        
        scene++;
        break;
    
    case 5:
        with (obj_ceroba_transformation_soul)
        {
            is_charging = true;
            
            if (is_charged)
            {
                can_shoot = true;
                other.scene++;
            }
        }
        
        break;
    
    case 6:
        if (instance_exists(obj_heart_yellow_shot))
        {
            with (obj_heart_yellow_shot)
            {
                if (y < (obj_ceroba_body_pacifist_phase_2.y + 150))
                {
                    vspeed = lerp(vspeed, 0, 0.1);
                    
                    if (vspeed > -5)
                        other.draw_alpha = 1 - (vspeed / -5);
                    
                    if (vspeed > -0.01)
                    {
                        other.draw_alpha = 1;
                        vspeed = 0;
                        other.scene = 8;
                        instance_destroy();
                    }
                }
            }
        }
        
        break;
    
    case 7:
        cutscene_wait(0.75);
        break;
    
    case 8:
        cutscene_wait(1);
        break;
    
    case 9:
        instance_create_depth(obj_ceroba_body_pacifist_phase_2.x, obj_ceroba_body_pacifist_phase_2.y, depth - 1, obj_ceroba_last_hit_impact);
        audio_play_sound(snd_ceroba_staff_break, 1, 0);
        scene++;
        break;
    
    case 10:
        cutscene_wait(1);
        break;
    
    case 11:
        box_overlay_alpha = 1;
        obj_dialogue_box_battle_transformation_any.image_xscale = 1;
        obj_dialogue_box_battle_transformation_any.image_yscale = 1;
        obj_heart_battle_fighting_parent.image_alpha = 1;
        instance_destroy(obj_ceroba_phase_2_red_shader);
        instance_destroy(obj_ceroba_transformation_soul);
        instance_destroy(obj_battle_hp_current_self);
        instance_destroy(obj_battle_hp_max_self);
        instance_destroy(obj_text_hp_stat);
        instance_destroy(obj_text_hp);
        instance_destroy(obj_text_battle_stat_lv);
        instance_destroy(obj_text_battle_stat_name);
        instance_destroy(obj_petal_generator_phase_2);
        instance_destroy(obj_autofire_toggle);
        obj_ceroba_body_pacifist_phase_2.sprite_index = spr_ceroba_p2_block_2;
        obj_ceroba_body_pacifist_phase_2.image_index = 0;
        obj_ceroba_body_pacifist_phase_2.image_speed = 0;
        scene++;
        break;
    
    case 12:
        if (draw_alpha > 0)
        {
            draw_alpha -= 0.1;
        }
        else
        {
            draw_alpha = 0;
            scene++;
        }
        
        break;
    
    case 13:
        cutscene_wait(0.5);
        break;
    
    case 14:
        obj_ceroba_body_pacifist_phase_2.image_speed = 1;
        obj_ceroba_body_pacifist_phase_2.x = obj_ceroba_body_pacifist_phase_2.xstart;
        scene++;
        break;
    
    case 15:
        with (obj_ceroba_body_pacifist_phase_2)
        {
            if (sprite_index == spr_ceroba_p2_block_3 && image_index >= (image_number - 1))
                other.scene++;
        }
        
        break;
    
    case 16:
        cutscene_wait(3);
        break;
    
    case 17:
        instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
        instance_create_depth(0, 0, -1000, obj_quote_battle_ceroba_outro_1);
        obj_ceroba_body_pacifist_phase_2.sprite_index = spr_ceroba_p2_defeated_talk;
        obj_ceroba_body_pacifist_phase_2.image_index = 0;
        obj_ceroba_body_pacifist_phase_2.image_speed = 0;
        cutscene_advance();
        break;
    
    case 18:
        if (!instance_exists(obj_quote_battle_ceroba_outro_1))
            scene++;
        
        break;
    
    case 19:
        cutscene_wait(1);
        break;
    
    case 20:
        instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
        instance_create_depth(0, 0, -1000, obj_quote_battle_ceroba_outro_2);
        cutscene_advance();
        break;
    
    case 21:
        if (!instance_exists(obj_quote_battle_ceroba_outro_2))
            scene++;
        
        break;
    
    case 22:
        if (obj_ceroba_body_pacifist_phase_2.sprite_index != spr_ceroba_p2_defeated_turn_left)
        {
            obj_ceroba_body_pacifist_phase_2.sprite_index = spr_ceroba_p2_defeated_turn_left;
            obj_ceroba_body_pacifist_phase_2.image_index = 0;
            obj_ceroba_body_pacifist_phase_2.image_speed = 1;
        }
        else if (obj_ceroba_body_pacifist_phase_2.image_index >= obj_ceroba_body_pacifist_phase_2.image_number)
        {
            obj_ceroba_body_pacifist_phase_2.image_index = obj_ceroba_body_pacifist_phase_2.image_number - 1;
            obj_ceroba_body_pacifist_phase_2.image_speed = 0;
            cutscene_advance(22.5);
        }
        
        break;
    
    case 22.5:
        if (cutscene_wait(0.5))
            scene = 23;
        
        break;
    
    case 23:
        instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
        instance_create_depth(0, 0, -1000, obj_quote_battle_ceroba_outro_3);
        cutscene_advance();
        break;
    
    case 24:
        if (!instance_exists(obj_quote_battle_ceroba_outro_3))
            scene++;
        
        break;
    
    case 25:
        obj_ceroba_body_pacifist_phase_2.sprite_index = spr_ceroba_p2_defeated_side_idle;
        obj_ceroba_body_pacifist_phase_2.image_index = 0;
        obj_ceroba_body_pacifist_phase_2.image_speed = 0;
        cutscene_wait(2);
        break;
    
    case 26:
        obj_ceroba_body_pacifist_phase_2.sprite_index = spr_ceroba_p2_defeated_side_talk;
        instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
        instance_create_depth(0, 0, -1000, obj_quote_battle_ceroba_outro_4);
        cutscene_advance();
        break;
    
    case 27:
        if (!instance_exists(obj_quote_battle_ceroba_outro_4))
        {
            obj_ceroba_body_pacifist_phase_2.sprite_index = spr_ceroba_p2_defeated_side_idle;
            cutscene_wait(2);
        }
        
        break;
    
    case 28:
        obj_ceroba_body_pacifist_phase_2.sprite_index = spr_ceroba_p2_defeated_side_talk;
        instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
        instance_create_depth(0, 0, -1000, obj_quote_battle_ceroba_outro_5);
        cutscene_advance();
        break;
    
    case 29:
        if (!instance_exists(obj_quote_battle_ceroba_outro_5))
        {
            obj_ceroba_body_pacifist_phase_2.sprite_index = spr_ceroba_p2_defeated_talk;
            obj_ceroba_body_pacifist_phase_2.image_index = 0;
            obj_ceroba_body_pacifist_phase_2.image_speed = 0;
            cutscene_wait(1);
        }
        
        break;
    
    case 30:
        battle_box = obj_dialogue_box_battle_transformation_any;
        box_overlay_alpha -= 0.1;
        
        if (box_overlay_alpha <= 0)
        {
            instance_create_depth(battle_box.bbox_left + 30, battle_box.y - 22, battle_box.depth - 1, obj_ceroba_phase_2_fight);
            instance_create_depth(battle_box.bbox_right - sprite_get_width(spr_mercy) - 30, battle_box.y - 22, battle_box.depth - 1, obj_ceroba_phase_2_mercy);
            obj_heart_battle_fighting_parent.moveable = true;
            obj_heart_battle_fighting_parent.can_shoot = false;
            obj_heart_battle_fighting_yellow_final.can_charge = false;
            scene++;
        }
        
        break;
    
    case 31:
        if (obj_ceroba_phase_2_mercy.button_pressed == true)
        {
            obj_ceroba_phase_2_mercy.fade_in = false;
            obj_ceroba_phase_2_fight.fade_in = false;
            obj_heart_battle_fighting_parent.moveable = false;
            scene += 1;
        }
        
        if (obj_ceroba_phase_2_fight.button_pressed == true)
        {
            obj_ceroba_phase_2_mercy.fade_in = false;
            obj_ceroba_phase_2_fight.fade_in = false;
            obj_heart_battle_fighting_parent.moveable = false;
            scene = 44;
        }
        
        break;
    
    case 32:
        cutscene_wait(1);
        break;
    
    case 33:
        instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
        instance_create_depth(0, 0, -1000, obj_quote_battle_ceroba_outro_spare_1);
        cutscene_advance();
        break;
    
    case 34:
        if (!instance_exists(obj_quote_battle_ceroba_outro_spare_1))
        {
            obj_ceroba_phase_2_mercy.fade_in = true;
            obj_ceroba_phase_2_fight.fade_in = true;
            obj_heart_battle_fighting_parent.moveable = true;
            scene++;
        }
        
        break;
    
    case 35:
        if (obj_ceroba_phase_2_mercy.button_pressed == true)
        {
            obj_ceroba_phase_2_mercy.fade_in = false;
            obj_ceroba_phase_2_fight.fade_in = false;
            obj_heart_battle_fighting_parent.moveable = false;
            scene += 1;
        }
        
        if (obj_ceroba_phase_2_fight.button_pressed == true)
        {
            obj_ceroba_phase_2_mercy.fade_in = false;
            obj_ceroba_phase_2_fight.fade_in = false;
            obj_heart_battle_fighting_parent.moveable = false;
            scene = 44;
        }
        
        break;
    
    case 36:
        cutscene_wait(1);
        break;
    
    case 37:
        instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
        instance_create_depth(0, 0, -1000, obj_quote_battle_ceroba_outro_spare_2);
        cutscene_advance();
        break;
    
    case 38:
        if (!instance_exists(obj_quote_battle_ceroba_outro_spare_2))
        {
            obj_ceroba_phase_2_mercy.fade_in = true;
            obj_ceroba_phase_2_fight.fade_in = true;
            obj_heart_battle_fighting_parent.moveable = true;
            scene++;
        }
        
        break;
    
    case 39:
        if (obj_ceroba_phase_2_mercy.button_pressed == true)
        {
            obj_ceroba_phase_2_mercy.fade_in = false;
            obj_ceroba_phase_2_fight.fade_in = false;
            obj_heart_battle_fighting_parent.moveable = false;
            scene += 1;
        }
        
        if (obj_ceroba_phase_2_fight.button_pressed == true)
        {
            obj_ceroba_phase_2_mercy.fade_in = false;
            obj_ceroba_phase_2_fight.fade_in = false;
            obj_heart_battle_fighting_parent.moveable = false;
            scene = 44;
        }
        
        break;
    
    case 40:
        cutscene_wait(1);
        break;
    
    case 41:
        instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
        instance_create_depth(0, 0, -1000, obj_quote_battle_ceroba_outro_spare_3);
        cutscene_advance();
        break;
    
    case 42:
        if (!instance_exists(obj_quote_battle_ceroba_outro_spare_3))
        {
            obj_ceroba_body_pacifist_phase_2.sprite_index = spr_ceroba_p2_defeated_spared;
            obj_ceroba_body_pacifist_phase_2.image_index = 0;
            obj_ceroba_body_pacifist_phase_2.image_speed = 0;
            var bubble = instance_create(440, 74, obj_quote_bubble_battle_yellow_2_reverse);
            instance_create_depth(0, 0, -1000, obj_quote_battle_ceroba_outro_spare_4);
            scene++;
        }
        
        break;
    
    case 43:
        if (!instance_exists(obj_quote_battle_ceroba_outro_spare_4))
        {
            if (!instance_exists(obj_battle_fade_out_screen))
            {
                global.hotland_flag[3] = 1;
                global.current_room_overworld = "rm_newhome_03";
                audio_play_sound(snd_monster_damage_death, 1, 0);
                instance_create(0, 0, obj_battle_fade_out_screen);
            }
        }
        
        break;
    
    case 44:
        cutscene_wait(1.5);
        break;
    
    case 45:
        instance_create(380, 74, obj_quote_bubble_battle_yellow_3);
        instance_create_depth(0, 0, -1000, obj_quote_battle_ceroba_outro_kill);
        cutscene_advance();
        break;
    
    case 46:
        if (instance_exists(obj_quote_battle_ceroba_outro_kill))
            exit;
        
        obj_heart_battle_fighting_parent.image_alpha = lerp(obj_heart_battle_fighting_parent.image_alpha, 0, 0.05);
        box_overlay_alpha = 1 - obj_heart_battle_fighting_parent.image_alpha;
        
        if (obj_heart_battle_fighting_parent.image_alpha <= 0.1)
        {
            obj_heart_battle_fighting_parent.image_alpha = 0;
            box_overlay_alpha = 1;
            scene++;
        }
        
        break;
    
    case 47:
        cutscene_wait(1);
        break;
    
    case 48:
        global.enemy_sparing = true;
        global.enemy_vulnerable = true;
        global.last_action_selected = "Fight";
        global.last_action_selected_2 = "Nothing";
        global.last_action_selected_3 = "Nothing";
        instance_create(320, 320, obj_toy_gun_battle_circle);
        obj_toy_gun_battle_circle.image_alpha = 0;
        instance_create_depth(319, 319, -643, obj_final_boss_circle);
        global.enemy_target_y = obj_ceroba_body_pacifist_phase_2.y - 130;
        scene++;
        break;
    
    case 49:
        break;
    
    case 50:
        cutscene_wait(2.5);
        break;
    
    case 51:
        instance_create(obj_ceroba_body_pacifist_phase_2.x - 59, obj_ceroba_body_pacifist_phase_2.y - 29, obj_ceroba_dead_pacifist);
        global.hotland_flag[3] = 2;
        scene++;
        break;
    
    case 52:
        obj_ceroba_body_pacifist_phase_2.image_alpha = 0;
        cutscene_wait(3);
        break;
    
    case 53:
        global.enemy_dead = false;
        global.current_room_overworld = "rm_newhome_03";
        instance_create(0, 0, obj_battle_fade_out_screen);
        scene++;
        break;
}

with (obj_heart_battle_fighting_parent)
{
    if (!moveable)
    {
        x = lerp(x, battle_box.x, 0.1);
        y = lerp(y, battle_box.y, 0.1);
        
        if (abs(x - battle_box.x) < 0.01 && abs(y - battle_box.y) < 0.01)
        {
            x = battle_box.x;
            y = battle_box.y;
        }
    }
}

if (instance_exists(obj_heart_yellow_shot) && scene < 6)
{
    with (obj_heart_yellow_shot)
    {
        if (y < (obj_ceroba_body_pacifist_phase_2.y - 70))
        {
            audio_play_sound(snd_ring, 1, 0);
            instance_create_depth(x, y - sprite_height, -999, obj_heart_yellow_shot_destroy);
            instance_destroy();
        }
    }
}

if (scene < 11)
    obj_ceroba_body_pacifist_phase_2.y = lerp(obj_ceroba_body_pacifist_phase_2.y, 220, 0.25);
