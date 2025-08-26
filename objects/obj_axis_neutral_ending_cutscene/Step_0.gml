if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        draw_alpha += 0.05;
        
        if (draw_alpha >= 1)
            scene++;
        
        break;
    
    case 1:
        cutscene_wait(0.5);
        break;
    
    case 2:
        obj_axis_body.sprite_index = spr_axis_body_nocharge;
        obj_axis_body.base_sprite = 1391;
        instance_destroy(obj_quote_battle_axis_attack_end);
        instance_destroy(obj_background_boss_battle_axis_yellow);
        instance_create_depth(obj_axis_body.x, obj_axis_body.y, obj_axis_body.depth - 1, obj_axis_heart);
        scene++;
        break;
    
    case 3:
        draw_alpha -= 0.05;
        
        if (draw_alpha <= 0)
            scene++;
        
        break;
    
    case 4:
        cutscene_wait(1);
        break;
    
    case 5:
        instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
        instance_create(0, 0, obj_quote_battle_axis_special_robot);
        scene++;
        break;
    
    case 6:
        if (!instance_exists(obj_quote_battle_axis_special_robot))
            cutscene_wait(1);
        
        break;
    
    case 7:
        instance_create(402, 68, obj_quote_bubble_battle_yellow_2);
        instance_create(0, 0, obj_quote_battle_axis_neutral_post_attacks);
        scene++;
        break;
    
    case 8:
        if (!instance_exists(obj_quote_battle_axis_neutral_post_attacks))
        {
            global.action_1_important = true;
            global.action_1_color = c_yellow;
            global.action_amount = 1;
            instance_destroy();
        }
        
        break;
}
