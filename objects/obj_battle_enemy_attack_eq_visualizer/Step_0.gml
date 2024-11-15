var i, y_target, box, soul;

if (live_call())
    return global.live_result;

if (!instance_exists(obj_dialogue_box_battle_transformation_any))
    exit;

switch (scene)
{
    case -1:
        for (i = 0; i < eq_bar_number; i++)
        {
            eq_bar_height_target[i] = irandom_range(eq_bar_height_min, eq_bar_height_max);
            
            if (eq_bar_height_target[i] < eq_bar_collidable)
            {
                if (eq_bar_low_current < eq_bar_low_max)
                {
                    eq_bar_low_current += 1;
                }
                else
                {
                    eq_bar_hi_current += 1;
                    eq_bar_height_target[i] = irandom_range(eq_bar_collidable, eq_bar_height_max);
                }
            }
            else if (eq_bar_height_target[i] > eq_bar_collidable)
            {
                if (eq_bar_hi_current < eq_bar_hi_max)
                {
                    eq_bar_hi_current += 1;
                }
                else
                {
                    eq_bar_height_target[i] = irandom_range(eq_bar_height_min, eq_bar_collidable);
                    eq_bar_low_current += 1;
                }
            }
        }
        
        cutscene_advance();
        break;
    
    case 0:
    case 2:
    case 4:
    case 6:
        eq_bar_draw_warning_bars = false;
        cutscene_wait(0.1);
        break;
    
    case 1:
    case 3:
    case 5:
        if (eq_bar_draw_warning_bars == false)
        {
            eq_bar_draw_warning_bars = true;
            audio_play_sound(snd_bullet_warning, 1, 0);
        }
        
        cutscene_wait(0.1);
        break;
    
    case 7:
        cutscene_wait(0.2);
        break;
    
    case 8:
        if (cutscene_wait(0.6))
        {
            eq_bar_hi_current = 0;
            eq_bar_low_current = 0;
            scene = -1;
            
            if (attack_number_max > 1)
                attack_number_max -= 1;
            else
                instance_destroy();
            
            for (i = 0; i < eq_bar_number; i++)
                eq_bar_height_target[i] = eq_bar_height_min;
        }
        
        break;
}

for (i = 0; i < eq_bar_number; i++)
{
    if (scene > 7)
        y_target = eq_bar_height_target[i];
    else
        y_target = eq_bar_height_min;
    
    eq_bar_height[i] = lerp(eq_bar_height[i], y_target, lerp_speed);
}

if (!instance_exists(obj_dialogue_box_battle_transformation_any))
    exit;

for (i = 0; i < eq_bar_number; i++)
{
    box = 3154;
    xx = box.bbox_left + 6 + ((i + 1) * eq_bar_gap) + (eq_bar_width * i);
    yy = box.bbox_bottom - 6;
    yy_2 = yy - eq_bar_height[i];
    
    if (instance_exists(obj_heart_battle_fighting_parent))
    {
        soul = 2979;
        
        if (soul.vulnerable == true && rectangle_in_rectangle(soul.bbox_left, soul.bbox_top, soul.bbox_right, soul.bbox_bottom, xx, yy, xx + eq_bar_width, yy_2))
        {
            with (obj_heart_battle_fighting_parent)
            {
                collide_id = other;
                damage_number = collide_id.damage_number;
                event_user(1);
            }
        }
    }
}
