if (obj_ceroba_body.sprite_index == spr_ceroba_phase_switch)
    exit;

global.enemy_attack = "Ceroba Split Attack";
global.soul_mode = "Red";
global.image_alpha_enemy_attacking_immunity = false;
instance_create(0, 0, obj_battle_enemy_attack_ceroba_red_box);
instance_destroy();
