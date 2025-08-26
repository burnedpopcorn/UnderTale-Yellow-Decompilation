if (live_call())
    return global.live_result;

depth = obj_flowey_battle_final.depth + 2;
instance_create_depth(111, 130, depth - 1, obj_flowey_battle_phase_2_lowpoly_leaf);
var leaf2 = instance_create_depth(281, 126, depth - 1, obj_flowey_battle_phase_2_lowpoly_leaf);
leaf2.sprite_index = spr_battle_flowey_lowpoly_leaf_2;
instance_create_depth(-60, 60, -100, obj_flowey_battle_phase_2_side_vine);
var vine2 = instance_create_depth(700, 60, -100, obj_flowey_battle_phase_2_side_vine);
vine2.image_xscale = -1;
flowey_vulnerable = 0;
draw_alpha_white = 0;
instance_create_depth(0, 0, -100, obj_flowey_battle_lowpoly_spawner_stickbug);
instance_create_depth(0, 0, -100, obj_flowey_battle_lowpoly_spawner_hspikes);
instance_create_depth(0, 0, -100, obj_flowey_battle_lowpoly_spawner_vspikes);
instance_create_depth(0, 0, -100, obj_flowey_battle_lowpoly_spawner_dspikes);
