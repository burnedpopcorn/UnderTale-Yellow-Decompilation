var x_target, y_target, damage;

x_target = lengthdir_x(beam_length, direction);
y_target = lengthdir_y(beam_length, direction);

if (obj_heart_battle_fighting_parent.vulnerable == true && collision_line(x, y, x + x_target, y + y_target, obj_heart_battle_fighting_red, false, false))
{
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

can_fire = 1;
