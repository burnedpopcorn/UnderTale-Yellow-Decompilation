if (live_call())
    return global.live_result;

if (!instance_exists(obj_dialogue_box_battle_transformation_any))
{
    instance_destroy();
    exit;
}

var battle_box = obj_dialogue_box_battle_transformation_any;

if (speed == 0)
{
    x = battle_box.x + lengthdir_x(bullet_dist, bullet_dir);
    y = battle_box.y + lengthdir_y(bullet_dist, bullet_dir);
}
