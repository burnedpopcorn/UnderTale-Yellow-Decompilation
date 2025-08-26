if (live_call())
    return global.live_result;

damage_number = scr_determine_damage_number_enemy("macro froggit", "void", "void");
var spawn_frog = 224;

if (irandom(4) == 1)
    spawn_frog = 227;

if (irandom(4) == 1)
    spawn_frog = 500;

if (obj_battle_enemy_attack_macro_frog_choir_creator.spawn_green_frog == true)
{
    spawn_frog = 478;
    obj_battle_enemy_attack_macro_frog_choir_creator.spawn_green_frog = false;
}

my_frog = instance_create_depth(x, y - 1, depth - 1, spawn_frog);
my_frog.spawner = id;
jump_chance = 60;
