if (!layer_exists("Attack Layer"))
    layer_create(obj_heart_battle_fighting_parent.depth - 1, "Attack Layer");

attack_sequence = layer_sequence_create("Attack Layer", 320, 320, 5);
