function scr_item_exists_check(argument0)
{
    var i;
    
    for (i = 1; i <= 8; i += 1)
    {
        if (global.item_slot[i] == argument0)
        {
            return true;
            exit;
            break;
        }
        else if (i == 8)
        {
            return false;
        }
    }
}
