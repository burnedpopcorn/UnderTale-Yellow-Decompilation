if (noise_timer > 0)
{
    noise_timer -= 1;
    noise_alpha = lerp(noise_alpha, 0.8, 0.1);
}
else
{
    noise_alpha = lerp(noise_alpha, 0, 0.35);
}

if (irandom(20) == 1)
    noise_timer = noise_timer_max;
