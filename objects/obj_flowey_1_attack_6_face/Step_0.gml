if (live_call())
    return global.live_result;

switch (scene)
{
    case 0:
        instance_create_depth(x + ((30 + irandom_range(-10, 10)) * side), y + 20, depth - 1, obj_flowey_1_attack_6_tear);
        cutscene_advance();
        break;
    
    case 1:
        cutscene_wait(1.25);
        break;
    
    case 2:
        side *= -1;
        cutscene_advance(0);
        break;
}
