if (live_call())
    return global.live_result;

battle_box = 3154;
xx = battle_box.x;
yy = battle_box.y + 30;
layer_create(-90, "sequence_layer");
entrance_seq = layer_sequence_create("sequence_layer", xx, yy, 8);
hand_reroll = false;
scene = 0;
scr_enable_battle_box_surface();
