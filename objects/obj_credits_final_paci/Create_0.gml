if (live_call())
    return global.live_result;

layer_create(depth, "sequence_layer");
idle_seq = layer_sequence_create("sequence_layer", x, y, 16);
