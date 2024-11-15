if (marsh_count < marsh_max)
{
    if (obj_heart_battle_fighting_parent.idle_hsp_count > 0)
        instance_create(obj_heart_battle_fighting_parent.x, box.bbox_top - 30, obj_battle_enemy_attack_bowll_liquid_marshmallow);
    else
        instance_create(obj_heart_battle_fighting_parent.x + (global.speed_self * 4 * obj_heart_battle_fighting_parent.last_hsp), box.bbox_top - 30, obj_battle_enemy_attack_bowll_liquid_marshmallow);
    
    marsh_count += 1;
    alarm[0] = marsh_alarm;
}
else
{
    alarm[1] = end_alarm;
}
