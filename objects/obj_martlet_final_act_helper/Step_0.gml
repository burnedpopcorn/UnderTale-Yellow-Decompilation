if (attack_noloop == 0 && global.enemy_attacking == true)
    attack_noloop = 1;

if (attack_noloop == 1 && global.enemy_attacking == false)
    instance_destroy();
