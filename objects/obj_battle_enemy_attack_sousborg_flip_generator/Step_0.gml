if (layer_sequence_is_finished(attack_sequence) && can_move == false)
{
    can_move = true;
    x_new = irandom_range(350, 450);
}

if (can_move == true)
{
    if (abs(layer_sequence_get_x(attack_sequence) - x_new) > 0.5)
    {
        layer_sequence_x(attack_sequence, lerp(layer_sequence_get_x(attack_sequence), x_new, 0.4));
    }
    else
    {
        can_move = false;
        layer_sequence_play(attack_sequence);
    }
}
