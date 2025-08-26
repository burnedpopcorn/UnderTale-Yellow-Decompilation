var box = obj_dialogue_box_battle_transformation_any;
var soul = obj_heart_battle_fighting_red;

if ((train_count % 2) == 0)
{
    instance_create(320, soul.y, obj_battle_enemy_attack_starlo_train_tracks);
}
else
{
    var tracks = instance_create(soul.x, 320, obj_battle_enemy_attack_starlo_train_tracks);
    tracks.image_angle = 90;
    tracks.direction = 90;
}

train_count--;

if (train_count <= 0)
    instance_destroy();
else
    alarm[0] = 25;
