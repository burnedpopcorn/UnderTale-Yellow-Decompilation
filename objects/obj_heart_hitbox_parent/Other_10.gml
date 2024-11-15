hit = false;

if (place_meeting(x, y, obj_battle_enemy_attack_parent))
{
    with (obj_heart_battle_fighting_parent)
    {
        collide_id = instance_place(x, y, obj_battle_enemy_attack_parent);
        damage_number = collide_id.damage_number;
    }
    
    hit = true;
}

if (place_meeting(x, y, obj_battle_enemy_attack_orange_parent) && obj_heart_battle_fighting_parent.hsp == 0 && obj_heart_battle_fighting_parent.vsp == 0)
{
    with (obj_heart_battle_fighting_parent)
    {
        collide_id = instance_place(x, y, obj_battle_enemy_attack_orange_parent);
        damage_number = collide_id.damage_number;
    }
    
    hit = true;
}

if (place_meeting(x, y, obj_battle_enemy_attack_blue_parent) && (obj_heart_battle_fighting_parent.hsp != 0 || obj_heart_battle_fighting_parent.vsp != 0))
{
    with (obj_heart_battle_fighting_parent)
    {
        collide_id = instance_place(x, y, obj_battle_enemy_attack_blue_parent);
        damage_number = collide_id.damage_number;
    }
    
    hit = true;
}

event_user(1);
