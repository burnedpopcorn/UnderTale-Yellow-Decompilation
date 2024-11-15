function scr_battle_damage_player()
{
    var damage;
    
    damage = (global.enemy_attack_stat - global.player_armor_defense - global.player_armor_modifier_defense - global.player_defense) + 10;
    global.current_hp_self -= damage;
    audio_play_sound(snd_hurt, 1, 0);
    
    with (obj_heart_battle_fighting_parent)
    {
        vulnerable = false;
        global.hit_self = true;
        alarm[0] = global.invulnerability_self;
    }
}
