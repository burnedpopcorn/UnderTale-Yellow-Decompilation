if (active == 1)
{
    if (x < 160)
    {
        x += ballRollSpeed;
    }
    else
    {
        alarm[0] = 15;
        active = 0;
    }
    
    if (x > 140 && ballRollSpeed > 0.5)
        ballRollSpeed -= 0.1;
}

if (active == 3)
{
    if (x < 260)
    {
        x += ballRollSpeed;
    }
    else
    {
        alarm[0] = 15;
        active = 4;
    }
    
    ballRollSpeed += 0.1;
}
