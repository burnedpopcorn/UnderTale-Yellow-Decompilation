if (alpha < 1)
    alpha += 0.05;

if (alpha >= 0.99 && !alarm[0] && scroll == 0)
    alarm[0] = 45;

if (scroll == 1)
{
    yy -= scrollSpeed;
    scrollSpeed = 2;
}

if (yy < scrollMax)
    scroll = 2;

if (scroll == 2)
{
    yy -= scrollSpeed;
    
    if (scrollSpeed > 0)
        scrollSpeed -= 0.01;
    
    if (scrollSpeed < 0)
    {
        scrollSpeed = 0;
        yy = round(yy);
        
        if (!alarm[2])
            alarm[2] = 180;
    }
}
