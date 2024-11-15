var box, seed;

if (live_call())
    return global.live_result;

box = 3154;

switch (scene)
{
    case 0:
        cutscene_wait(1);
        break;
    
    case 1:
        seed = instance_create_depth(grass_spawn_x_ar[grass_current], grass_spawn_y_ar[grass_current], obj_heart_battle_fighting_parent.depth - 3, obj_battle_enemy_attack_guardener_seed_grow);
        seed.direction = grass_spawn_direction[grass_current];
        grass_current += 1;
        
        if (grass_current >= array_length(grass_spawn_x_ar))
        {
            cutscene_advance(3);
            exit;
        }
        
        cutscene_advance();
        break;
    
    case 2:
        if (cutscene_wait(0.25))
            cutscene_advance(1);
        
        break;
    
    case 3:
        cutscene_wait(2);
        break;
    
    case 4:
        instance_destroy();
        break;
}
