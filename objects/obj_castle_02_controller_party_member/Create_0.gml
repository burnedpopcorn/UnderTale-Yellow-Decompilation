if (live_call())
    return global.live_result;

pmember = global.party_member;

if (pmember == -4 || !instance_exists(pmember))
{
    instance_destroy();
    exit;
}

fg_layer_id = layer_get_id("foreground_pillars");
depth = -239;
pmember.image_alpha = 0;
