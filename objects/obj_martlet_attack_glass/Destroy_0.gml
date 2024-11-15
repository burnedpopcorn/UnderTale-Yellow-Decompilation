var shard_number, i;

if (live_call())
    return global.live_result;

audio_play_sound(choose(snd_mirrorbreak, snd_mirrorbreak1, snd_mirrorbreak2, snd_mirrorbreak3), 1, 0);
shard_number = 4;

for (i = 0; i < shard_number; i++)
    instance_create_depth(x, y + (vspeed * 2), depth - 1, obj_martlet_attack_glass_shard);

with (instance_place(x - 1, y, obj_martlet_attack_glass))
{
    if (direction == other.direction)
        destroy_timer = 1;
}

with (instance_place(x + 1, y, obj_martlet_attack_glass))
{
    if (direction == other.direction)
        destroy_timer = 1;
}

with (instance_place(x, y - 1, obj_martlet_attack_glass))
{
    if (direction == other.direction)
        destroy_timer = 1;
}

with (instance_place(x, y + 1, obj_martlet_attack_glass))
{
    if (direction == other.direction)
        destroy_timer = 1;
}
