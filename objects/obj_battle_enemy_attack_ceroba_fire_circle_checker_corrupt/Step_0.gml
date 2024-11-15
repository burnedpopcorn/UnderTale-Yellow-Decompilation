if (!alarm[0])
    alarm[0] = 60;

with (obj_battle_enemy_attack_parent)
    damage_number = scr_determine_damage_number_enemy("flowey", "void", "void");

with (obj_battle_enemy_attack_blue_parent)
    damage_number = scr_determine_damage_number_enemy("flowey", "void", "void");

with (obj_battle_enemy_attack_orange_parent)
    damage_number = scr_determine_damage_number_enemy("flowey", "void", "void");

if (counter_current > counter_max)
{
    if (!alarm[1])
        alarm[1] = 20;
    
    exit;
}
