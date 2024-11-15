var list_pos, bul_spawn, bullet;

if (live_call())
    return global.live_result;

list_pos = irandom_range(0, ds_list_size(bullet_list) - 1);
bul_spawn = ds_list_find_value(bullet_list, list_pos);
ds_list_delete(bullet_list, list_pos);

switch (bul_spawn)
{
    case "left":
        bullet = instance_create_depth(battle_box.bbox_left + 20, battle_box.bbox_bottom, -100, obj_battle_enemy_attack_bullet_1);
        bullet.target_x = battle_box.bbox_right;
        bullet.target_y = battle_box.bbox_top - 70;
        bullet.turn_rate = 0.065;
        break;
    
    case "middle":
        bullet = instance_create_depth(battle_box.x, battle_box.bbox_bottom, -100, obj_battle_enemy_attack_bullet_1);
        bullet.target_x = 320;
        bullet.target_y = battle_box.bbox_bottom;
        break;
    
    case "right":
        bullet = instance_create_depth(battle_box.bbox_right - 20, battle_box.bbox_bottom, -100, obj_battle_enemy_attack_bullet_1);
        bullet.target_x = battle_box.bbox_left;
        bullet.target_y = battle_box.bbox_top - 70;
        bullet.turn_rate = 0.065;
        break;
}

if (ds_list_size(bullet_list) > 0)
{
    alarm[0] = bullet_offset;
}
else if (wave_number > 0)
{
    ds_list_add(bullet_list, "left", "middle", "right");
    alarm[0] = bullet_offset * 10;
    wave_number -= 1;
}
else
{
    alarm[1] = 160;
}
