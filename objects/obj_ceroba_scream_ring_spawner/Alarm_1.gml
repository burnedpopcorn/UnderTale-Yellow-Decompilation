var ring_frequency;

if (live_call())
    return global.live_result;

ring_frequency = 5;
instance_create_depth(x, y, depth, obj_ceroba_scream_ring);
alarm[1] = ring_frequency;
