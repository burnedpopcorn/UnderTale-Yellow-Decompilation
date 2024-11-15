if (!layer_exists("Attack Layer"))
    layer_create(obj_heart_battle_fighting_parent.depth - 1, "Attack Layer");

attack_sequence = layer_sequence_create("Attack Layer", obj_ceroba_body_pacifist_phase_2.x, obj_ceroba_body_pacifist_phase_2.y, 3);
