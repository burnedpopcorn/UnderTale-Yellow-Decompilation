function scr_timer()
{
    if (timer > 0)
    {
        timer--;
        return false;
    }
    else
    {
        return true;
    }
}
