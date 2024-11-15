with (obj_heart_battle_fighting_parent)
    moveable = false;

with (obj_dialogue_box_battle_transformation_any)
    event_user(0);

instance_create(0, 0, obj_battle_enemy_attack_starlo_take_aim_slow_restore);
obj_battle_hp_current_self.sprite_index = spr_battle_hp_current_self;
obj_battle_hp_max_self.sprite_index = spr_battle_hp_max_self;
