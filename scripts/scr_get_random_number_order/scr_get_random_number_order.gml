function scr_get_random_number_order(arg0, arg1)
{
    var rnumber_for_max = arg1 - arg0;
    
    for (i = 0; i <= rnumber_for_max; i++)
        rnumber_order[i] = arg0 + i;
    
    for (i = 0; i <= (rnumber_for_max - 1); i++)
    {
        var rnumber_switch = irandom_range(i, rnumber_for_max);
        
        if (rnumber_switch != i)
        {
            var rnumber_temp = rnumber_order[i];
            rnumber_order[i] = rnumber_order[rnumber_switch];
            rnumber_order[rnumber_switch] = rnumber_temp;
        }
    }
}
