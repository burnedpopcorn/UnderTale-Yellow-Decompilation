if (live_call())
    return global.live_result;

var battle_box = obj_dialogue_box_battle_transformation_any;
var spawn_dist = 120;
spawn_dir += (360 / bullet_count_max);

if (spawn_dir >= 360)
    spawn_dir -= 360;

var bullet = instance_create_depth(battle_box.x + lengthdir_x(spawn_dist, spawn_dir), battle_box.y + lengthdir_y(spawn_dist, spawn_dir), -150, obj_battle_enemy_attack_bullet_spawner);
bullet_count -= 1;

if (bullet_count > 0)
    alarm[0] = 15;
else
    scene = 1;

if (!instance_exists(obj_ceroba_bullet_particle_controller))
    instance_create(0, 0, obj_ceroba_bullet_particle_controller);
