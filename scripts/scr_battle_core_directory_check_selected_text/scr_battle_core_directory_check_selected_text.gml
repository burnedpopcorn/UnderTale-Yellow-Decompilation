function scr_battle_core_directory_check_selected_text()
{
    var battle_enemy_name, enemy_attack_stat, enemy_defense_stat, enemy_mode, enemy_low_hp, act_number, game_mode;
    
    if (global.battling_boss == true)
    {
        battle_enemy_name = global.battle_enemy_name;
        enemy_attack_stat = global.enemy_attack_stat;
        enemy_defense_stat = global.enemy_defense_stat;
        enemy_mode = global.enemy_mode;
        enemy_low_hp = global.enemy_low_hp;
    }
    else
    {
        act_number = global.act_number;
        
        switch (act_number)
        {
            case 1:
                battle_enemy_name = global.battle_enemy_name_1;
                enemy_attack_stat = global.enemy_attack_stat;
                enemy_defense_stat = global.enemy_defense_stat;
                enemy_mode = global.enemy_mode;
                enemy_low_hp = global.enemy_low_hp;
                break;
            
            case 2:
                battle_enemy_name = global.battle_enemy_name_2;
                enemy_attack_stat = global.enemy_attack_stat_2;
                enemy_defense_stat = global.enemy_defense_stat_2;
                enemy_mode = global.enemy_mode_2;
                enemy_low_hp = global.enemy_low_hp_2;
                break;
            
            case 3:
                battle_enemy_name = global.battle_enemy_name_3;
                enemy_attack_stat = global.enemy_attack_stat_3;
                enemy_defense_stat = global.enemy_defense_stat_3;
                enemy_mode = global.enemy_mode_3;
                enemy_low_hp = global.enemy_low_hp_3;
                break;
            
            default:
                battle_enemy_name = global.battle_enemy_name_1;
                enemy_attack_stat = global.enemy_attack_stat;
                enemy_defense_stat = global.enemy_defense_stat;
                enemy_mode = global.enemy_mode;
                enemy_low_hp = global.enemy_low_hp;
        }
    }
    
    game_mode = global.game_mode;
    
    if (game_mode == "customs")
    {
        if (battle_enemy_name == "craniex")
        {
            message[0] = "* CRANIEX -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Gifted logically, stubborn#  emotionally.";
        }
        else if (battle_enemy_name == "ms mettaton")
        {
            if (global.ms_mettaton_transformed == false)
                message[0] = "* MS. METTATON -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Her speed renders her#  invulnerable to attack.";
            else
                message[0] = "* MS. METTATON EX ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* The ultimate, yet imperfect,#  killer robot!";
        }
    }
    else if (game_mode == "yellow")
    {
        if (battle_enemy_name == "froggit intro")
        {
            message[0] = "* FROGGIT -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Life is difficult for this#  enemy.";
        }
        else if (battle_enemy_name == "flier a" || battle_enemy_name == "flier b" || battle_enemy_name == "flier c")
        {
            message[0] = "* FLIER -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Flier feels nothing.";
        }
        else if (battle_enemy_name == "penilla a" || battle_enemy_name == "penilla b")
        {
            message[0] = "* PENILLA -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* A sketchy character.";
        }
        else if (battle_enemy_name == "sweet corn a" || battle_enemy_name == "sweet corn b")
        {
            message[0] = "* SWEET CORN -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Constantly on a sugar rush.";
        }
        else if (battle_enemy_name == "crispy scroll a")
        {
            message[0] = "* CRISPY SCROLL -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Looking for someone who can#  match his enthusiasm.";
        }
        else if (battle_enemy_name == "rorrim a")
        {
            message[0] = "* RORRIM -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Rorrim's expression is blank.";
        }
        else if (battle_enemy_name == "decibat")
        {
            message[0] = "* DECIBAT -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Missing his quiet solitude.";
        }
        else if (battle_enemy_name == "dalv")
        {
            switch (enemy_mode)
            {
                case 0:
                    message[0] = "* DALV -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Wants to be left alone.";
                    break;
                
                case 1:
                    message[0] = "* DALV -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Acting somber.";
                    break;
                
                case 2:
                    message[0] = "* DALV -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Finally alone.";
                    break;
                
                default:
                    message[0] = "* DALV -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Wants to be left alone.";
            }
        }
        else if (battle_enemy_name == "micro froggit")
        {
            message[0] = "* MICRO FROGGIT -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Often falls through the cracks.";
        }
        else if (battle_enemy_name == "insomnitot a" || battle_enemy_name == "insomnitot b")
        {
            message[0] = "* INSOMNITOT -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Up past its bedtime.";
        }
        else if (battle_enemy_name == "know cone a" || battle_enemy_name == "know cone b")
        {
            if (global.route == 2)
                message[0] = "* KNOW CONE -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* One ski short of a snowmobile.";
            else
                message[0] = "* KNOW CONE -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* An eager mind filled with a#  burning passion.";
        }
        else if (battle_enemy_name == "frostermit a")
        {
            if (enemy_mode == 1)
                message[0] = "* FROSTERMIT -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Always right at home.";
            else
                message[0] = "* FROSTERMIT -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* A suspicious igloo.";
        }
        else if (battle_enemy_name == "trihecta")
        {
            message[0] = "* TRIHECTA -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Intimidatingly tall.";
        }
        else if (battle_enemy_name == "tri")
        {
            if (enemy_low_hp == true)
                message[0] = "* TRI -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* No longer intimidating.";
            else
                message[0] = "* TRI -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Taking things one step at a#  time.";
        }
        else if (battle_enemy_name == "hec")
        {
            if (enemy_low_hp == true)
                message[0] = "* HEC -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* No longer intimidating.";
            else
                message[0] = "* HEC -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Day is getting better.";
        }
        else if (battle_enemy_name == "ta")
        {
            if (enemy_low_hp == true)
                message[0] = "* TA -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* No longer intimidating.";
            else
                message[0] = "* TA -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Hopping with excitement!!";
        }
        else if (battle_enemy_name == "martlet pacifist")
        {
            message[0] = "* MARTLET -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* A little scatterbrained.";
        }
        else if (battle_enemy_name == "martlet genocide")
        {
            if (enemy_mode == 3)
                message[0] = "* MARTLET -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Standing firm.";
            else
                message[0] = "* MARTLET -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Scatterbrained.";
        }
        else if (battle_enemy_name == "dunebud a" || battle_enemy_name == "dunebud b")
        {
            if (enemy_low_hp == true)
                message[0] = "* DUNEBUD -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Wondering.";
            else
                message[0] = "* DUNEBUD -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Looking for some fun.";
        }
        else if (battle_enemy_name == "cactony a")
        {
            message[0] = "* CACTONY -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Lacks physical affection.";
        }
        else if (battle_enemy_name == "slither a" || battle_enemy_name == "slither b")
        {
            message[0] = "* SLITHER -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Trying to get a leg up in the#  world.";
        }
        else if (battle_enemy_name == "bowll a")
        {
            message[0] = "* BOWLL -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* A fragile facade.";
        }
        else if (battle_enemy_name == "el bailador")
        {
            if (global.route != 3)
                message[0] = "* EL BAILADOR -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* The definition of passion!";
            else
                message[0] = "* EL BAILADOR -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Another roadblock.";
        }
        else if (battle_enemy_name == "flower girls")
        {
            switch (global.dunes_flag[31])
            {
                case 1:
                    message[0] = "* Violetta -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Not one for conversation.";
                    break;
                
                case 2:
                    message[0] = "* Pedla -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Loves to give away flowers.";
                    break;
                
                case 3:
                    message[0] = "* Rosa -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Likes a good challenge.";
                    break;
            }
        }
        else if (battle_enemy_name == "dummy training pacifist")
        {
            message[0] = "* DUMMY -- ATK ? DEF ?#* Just a dummy.";
        }
        else if (battle_enemy_name == "ceroba genocide")
        {
            message[0] = "* CEROBA -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Nothing left.";
        }
        else if (battle_enemy_name == "starlo")
        {
            if (global.attack_cycle < 10)
                message[0] = "* STARLO -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* The almighty Sheriff.";
            else
                message[0] = "* STARLO -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* The not-so-almighty Sheriff.";
        }
        else if (battle_enemy_name == "ed")
        {
            message[0] = "* ED -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* The dream team!";
        }
        else if (battle_enemy_name == "moray")
        {
            message[0] = "* MORAY -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* The dream team!";
        }
        else if (battle_enemy_name == "ace")
        {
            message[0] = "* ACE -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* The dream team!";
        }
        else if (battle_enemy_name == "mooch")
        {
            message[0] = "* MOOCH -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* The dream team!";
        }
        else if (battle_enemy_name == "tellyvis a")
        {
            message[0] = "* TELLYVIS -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Can't live with or without#  one another.";
        }
        else if (battle_enemy_name == "jandroid a" || battle_enemy_name == "jandroid b")
        {
            message[0] = "* JANDROID -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* \"Hygiene\" is not in their#  vocabulary.";
        }
        else if (battle_enemy_name == "goosic a" || battle_enemy_name == "goosic b")
        {
            message[0] = "* GOOSIC -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Music drives the mood.";
        }
        else if (battle_enemy_name == "sousborg")
        {
            message[0] = "* SOUSBORG -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* A recipe for disaster.";
        }
        else if (battle_enemy_name == "axis")
        {
            message[0] = "* AXIS -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Today means the Surface.";
        }
        else if (battle_enemy_name == "axis genocide")
        {
            message[0] = "* AXIS -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat);
        }
        else if (battle_enemy_name == "macro froggit")
        {
            if (global.turns_passed == 0)
                message[0] = "* MICRO FROGGIT -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Often falls through the cracks.";
            else
                message[0] = "* MACRO FROGGIT -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Big frog.";
        }
        else if (battle_enemy_name == "guardener")
        {
            if (global.enemy_mode == 0)
                message[0] = "* GUARDENER -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Traps offenders for easy#  apprehension.";
            else
                message[0] = "* GUARDENER -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Should take her rage down a few#  notches.";
        }
        else if (battle_enemy_name == "flowey")
        {
            message[0] = "* Your best friend!";
        }
        else if (battle_enemy_name == "ceroba")
        {
            if (global.hotland_flag[2] == 0)
                message[0] = "* CEROBA -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* A legacy not to be forgotten.";
            else
                message[0] = "* Absolute devotion.";
        }
        else if (battle_enemy_name == "martlet genocide final")
        {
            message[0] = "* MARTLET -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* A worthy opponent.";
            
            if (global.hotland_flag[9] >= 2)
                message[0] = "* MARTLET -- ATK " + string(enemy_attack_stat) + " DEF " + string(enemy_defense_stat) + "#* Fallen down.";
        }
    }
}
