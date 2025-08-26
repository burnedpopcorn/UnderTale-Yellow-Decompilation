if (live_call())
    return global.live_result;

with (obj_heart_battle_fighting_parent)
{
    if (!variable_instance_exists(id, "collider_id") || collider_id != other)
    {
        var dmg = global.current_hp_self * 0.5;
        
        if (global.current_hp_self > 1)
            dmg = floor(dmg);
        
        if ((global.current_hp_self - dmg) > 1)
        {
            damage_number = 1;
            damage = dmg;
        }
        else if (global.current_hp_self != 1 && global.current_hp_self > 1)
        {
            damage = global.current_hp_self - 1;
        }
        else if (global.current_hp_self > 0.01)
        {
            obj_ceroba_phase_2_red_shader.decimal_count = 2;
            damage = global.current_hp_self * 0.99;
        }
        else
        {
            damage = 0;
            var hp_self_last = global.current_hp_self;
            global.current_hp_self /= 10;
            
            if (global.current_hp_self > 0)
                obj_ceroba_phase_2_red_shader.decimal_count += 1;
            else
                global.current_hp_self = hp_self_last;
        }
        
        vulnerable = true;
        
        if (vulnerable == true)
            event_user(1);
        
        collider_id = other;
        global.hit_self = true;
    }
}
