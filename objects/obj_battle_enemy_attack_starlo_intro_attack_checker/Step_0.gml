if (starlo_intro_dialogue_created == true && !instance_exists(obj_quote_battle_starlo))
{
    starlo_intro_dialogue_created = false;
    alarm[3] = 15;
}

if (starlo_soul_can_move == true && !instance_exists(obj_heart_tutorial_arrows_rope_yellow))
{
    starlo_soul_can_move = false;
    
    if (!alarm[2])
        alarm[2] = 70;
}
