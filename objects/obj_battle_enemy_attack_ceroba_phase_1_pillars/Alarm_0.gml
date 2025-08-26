if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
var list_pos = irandom_range(0, ds_list_size(bullet_list) - 1);
var bul_spawn = ds_list_find_value(bullet_list, list_pos);
ds_list_delete(bullet_list, list_pos);

switch (bul_spawn)
{
    case "left":
        var bullet = instance_create_depth(battle_box.x + 25, battle_box.bbox_bottom, -110, obj_battle_enemy_attack_bullet_1);
        
        with (bullet)
        {
            target_x = battle_box.bbox_left - 50;
            target_y = 200;
            turn_rate = 0.07;
        }
        
        break;
    
    case "right":
        var bullet = instance_create_depth(battle_box.x - 25, battle_box.bbox_bottom, -110, obj_battle_enemy_attack_bullet_1);
        bullet.image_xscale = -1;
        
        with (bullet)
        {
            target_x = battle_box.bbox_right + 50;
            target_y = 200;
            turn_rate = 0.07;
        }
        
        break;
}

if (ds_list_size(bullet_list) > 0)
{
    alarm[0] = bullet_offset;
}
else if (wave_number > 0)
{
    ds_list_add(bullet_list, "left", "middle", "right");
    alarm[0] = bullet_offset * 7;
    wave_number -= 1;
}
else
{
    alarm[1] = 180;
}
