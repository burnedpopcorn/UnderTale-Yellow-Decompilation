function scr_battle_core_directory_hp_displacements()
{
    var battle_enemy_name = global.battle_enemy_name;
    var game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
        {
            instance_create(obj_dialogue_box_battle.x + 238, obj_dialogue_box_battle.y + 30, obj_battle_hp_current_enemy);
            instance_create(obj_dialogue_box_battle.x + 238, obj_dialogue_box_battle.y + 30, obj_battle_hp_max_enemy);
        }
        else if (battle_enemy_name == "ms mettaton")
        {
            instance_create(obj_dialogue_box_battle.x + 366, obj_dialogue_box_battle.y + 30, obj_battle_hp_current_enemy);
            instance_create(obj_dialogue_box_battle.x + 366, obj_dialogue_box_battle.y + 30, obj_battle_hp_max_enemy);
        }
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "froggit intro" || battle_enemy_name == "flier solo" || battle_enemy_name == "penilla solo" || battle_enemy_name == "rorrim solo" || battle_enemy_name == "decibat" || battle_enemy_name == "dalv" || battle_enemy_name == "martlet pacifist" || battle_enemy_name == "martlet genocide" || battle_enemy_name == "cactony solo" || battle_enemy_name == "bowll solo" || battle_enemy_name == "dummy training pacifist" || battle_enemy_name == "flower girls")
        {
            instance_create(obj_dialogue_box_battle.x + 238, obj_dialogue_box_battle.y + 30, obj_battle_hp_current_enemy);
            instance_create(obj_dialogue_box_battle.x + 238, obj_dialogue_box_battle.y + 30, obj_battle_hp_max_enemy);
        }
        else if (battle_enemy_name == "flier penilla duo")
        {
            if (global.enemy_dead == false && global.enemy_spared == false)
            {
                instance_create(obj_dialogue_box_battle.x + 238, obj_dialogue_box_battle.y + 30, obj_battle_hp_current_enemy);
                instance_create(obj_dialogue_box_battle.x + 238, obj_dialogue_box_battle.y + 30, obj_battle_hp_max_enemy);
            }
            
            if (global.enemy_dead_2 == false && global.enemy_spared_2 == false)
            {
                instance_create(obj_dialogue_box_battle.x + 238, obj_dialogue_box_battle.y + 62, obj_battle_hp_current_enemy_2);
                instance_create(obj_dialogue_box_battle.x + 238, obj_dialogue_box_battle.y + 62, obj_battle_hp_max_enemy_2);
            }
        }
        else if (battle_enemy_name == "flier trio" || battle_enemy_name == "trihecta separated")
        {
            if (global.enemy_dead == false && global.enemy_spared == false)
            {
                instance_create(obj_dialogue_box_battle.x + 238, obj_dialogue_box_battle.y + 30, obj_battle_hp_current_enemy);
                instance_create(obj_dialogue_box_battle.x + 238, obj_dialogue_box_battle.y + 30, obj_battle_hp_max_enemy);
            }
            
            if (global.enemy_dead_2 == false && global.enemy_spared_2 == false)
            {
                instance_create(obj_dialogue_box_battle.x + 238, obj_dialogue_box_battle.y + 62, obj_battle_hp_current_enemy_2);
                instance_create(obj_dialogue_box_battle.x + 238, obj_dialogue_box_battle.y + 62, obj_battle_hp_max_enemy_2);
            }
            
            if (global.enemy_dead_3 == false && global.enemy_spared_3 == false)
            {
                instance_create(obj_dialogue_box_battle.x + 238, obj_dialogue_box_battle.y + 94, obj_battle_hp_current_enemy_3);
                instance_create(obj_dialogue_box_battle.x + 238, obj_dialogue_box_battle.y + 94, obj_battle_hp_max_enemy_3);
            }
        }
        else if (battle_enemy_name == "sweet corn solo" || battle_enemy_name == "crispy scroll solo" || battle_enemy_name == "micro froggit" || battle_enemy_name == "macro froggit" || battle_enemy_name == "insomnitot solo" || battle_enemy_name == "know cone solo" || battle_enemy_name == "trihecta together" || battle_enemy_name == "el bailador" || battle_enemy_name == "slither solo" || battle_enemy_name == "frostermit solo" || battle_enemy_name == "dunebud solo" || battle_enemy_name == "tellyvis")
        {
            instance_create(obj_dialogue_box_battle.x + 366, obj_dialogue_box_battle.y + 30, obj_battle_hp_current_enemy);
            instance_create(obj_dialogue_box_battle.x + 366, obj_dialogue_box_battle.y + 30, obj_battle_hp_max_enemy);
        }
        else if (battle_enemy_name == "sweet corn duo" || battle_enemy_name == "sweet corn penilla duo" || battle_enemy_name == "crispy scroll penilla duo" || battle_enemy_name == "insomnitot duo" || battle_enemy_name == "know cone insomnitot duo" || battle_enemy_name == "frostermit know cone duo" || battle_enemy_name == "dunebud duo")
        {
            if (global.enemy_dead == false && global.enemy_spared == false)
            {
                instance_create(obj_dialogue_box_battle.x + 366, obj_dialogue_box_battle.y + 30, obj_battle_hp_current_enemy);
                instance_create(obj_dialogue_box_battle.x + 366, obj_dialogue_box_battle.y + 30, obj_battle_hp_max_enemy);
            }
            
            if (global.enemy_dead_2 == false && global.enemy_spared_2 == false)
            {
                instance_create(obj_dialogue_box_battle.x + 366, obj_dialogue_box_battle.y + 62, obj_battle_hp_current_enemy_2);
                instance_create(obj_dialogue_box_battle.x + 366, obj_dialogue_box_battle.y + 62, obj_battle_hp_max_enemy_2);
            }
        }
    }
}
