var new_hand;

if (live_call())
    return global.live_result;

if (scene == 0)
{
    if (layer_sequence_is_finished(entrance_seq))
    {
        idle_seq = layer_sequence_create("sequence_layer", xx, yy, 9);
        scene = 1;
        instance_create_depth(xx - 67, yy - 10, -100, obj_battle_enemy_attack_mecha_frog_arm);
        arm_right = instance_create_depth(xx + 70, yy - 10, -100, obj_battle_enemy_attack_mecha_frog_arm);
        arm_right.image_xscale = -1;
        hand_left = instance_create_depth(xx - 103, yy - 18, -101, obj_battle_enemy_attack_mecha_frog_hand);
        hand_right = instance_create_depth(xx + 110, yy - 18, -101, obj_battle_enemy_attack_mecha_frog_hand);
        hand_right.image_xscale = -1;
        hand_reroll = true;
    }
}
else if (scene == 1)
{
    layer_sequence_destroy(entrance_seq);
    scene = 2;
}

if (hand_reroll == true)
{
    new_hand = choose(hand_right, hand_left);
    
    with (new_hand)
        active = true;
    
    hand_reroll = false;
}
