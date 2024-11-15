if (shake_strength > 0)
{
    x_offset = irandom_range(-shake_strength, shake_strength);
    y_offset = irandom_range(-shake_strength, shake_strength);
    shake_strength = lerp(shake_strength, 0, 0.1);
}
else
{
    x_offset = 0;
    y_offset = 0;
}
