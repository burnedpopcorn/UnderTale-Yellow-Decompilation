switch (scene)
{
    case 1:
        y = lerp(y, 440, 0.2);
        
        if (global.right_key || global.left_key || global.up_key || global.down_key)
        {
            alarm[0] = 6;
            soul_shake = true;
        }
        
        if (soul_shake == true)
        {
            x_offset = 0;
            y_offset = 0;
            x_offset = irandom_range(-2, 2);
            y_offset = irandom_range(-2, 2);
        }
        
        if (soul_can_shoot == true && keyboard_multicheck_pressed(0))
        {
            hint_noloop = true;
            instance_create_depth(x + 0.5, y - 6, depth - 1, obj_heart_yellow_shot);
            soul_can_shoot = false;
            alarm[1] = 10;
        }
        
        break;
}

if (soul_can_shoot && !hint_noloop)
{
    if (obj_flowey_battle_final.petal_count == 6)
    {
        if (hint_alpha < 1)
            hint_alpha += 0.05;
    }
}
else if (hint_alpha > 0)
{
    hint_alpha -= 0.1;
}
