if (claw_position == "left")
{
    with (obj_battle_enemy_attack_frostermit_pincher_left_1)
        state = "detract";
}
else if (claw_position == "right")
{
    with (obj_battle_enemy_attack_frostermit_pincher_right_1)
        state = "detract";
}

instance_destroy();
