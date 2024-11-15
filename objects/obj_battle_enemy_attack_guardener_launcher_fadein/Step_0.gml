if (live_call())
    return global.live_result;

image_alpha += 0.1;

if (image_alpha >= 1)
{
    instance_create_depth(x, y, obj_heart_battle_fighting_parent.depth - 2, obj_battle_enemy_attack_guardener_launcher);
    instance_destroy();
}
