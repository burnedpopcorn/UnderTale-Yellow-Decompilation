if (live_call())
    return global.live_result;

obj_pl.image_alpha = 1;
obj_pl.direction = 270;
global.cutscene = false;

if (global.party_member != -4)
{
    if (instance_exists(global.party_member))
        global.party_member.image_alpha = 1;
    else
        instance_create(obj_pl.x, obj_pl.y, global.party_member);
}
