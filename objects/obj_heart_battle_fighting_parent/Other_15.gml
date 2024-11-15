audio_play_sound(snd_battle_item_eat, 20, false);

with (obj_heart_hitbox_parent.collide_id)
{
    heart_collided = true;
    instance_destroy();
}

if (global.current_hp_self > global.max_hp_self)
    exit;

if (damage_number == 1)
    global.current_hp_self += damage;
else if (damage_number == 2)
    global.current_hp_self += damage_2;
else if (damage_number == 3)
    global.current_hp_self += damage_3;

if (global.current_hp_self > global.max_hp_self)
    global.current_hp_self = global.max_hp_self;
