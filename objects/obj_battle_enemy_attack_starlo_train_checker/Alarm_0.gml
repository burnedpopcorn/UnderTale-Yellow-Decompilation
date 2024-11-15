var box, soul, tracks;

box = 3154;
soul = 2980;

if ((train_count % 2) == 0)
{
    instance_create(320, soul.y, obj_battle_enemy_attack_starlo_train_tracks);
}
else
{
    tracks = instance_create(soul.x, 320, obj_battle_enemy_attack_starlo_train_tracks);
    tracks.image_angle = 90;
    tracks.direction = 90;
}

train_count--;

if (train_count <= 0)
    instance_destroy();
else
    alarm[0] = 25;
