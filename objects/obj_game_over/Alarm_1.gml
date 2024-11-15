switch (global.battle_enemy_name)
{
    case "flowey":
    case "flowey2":
        instance_create(160, 328, obj_game_over_choice);
        break;
    
    default:
        instance_create(160, 328, obj_game_over_text);
        break;
}
