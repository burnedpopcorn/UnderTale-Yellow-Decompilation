function joystick_check_button(argument0, argument1)
{
    var jid, button;
    
    jid = __joystick_2_gamepad(argument0);
    button = 0;
    
    switch (argument1)
    {
        case 0:
            button = 32769;
            break;
        
        case 1:
            button = 32770;
            break;
        
        case 2:
            button = 32771;
            break;
        
        case 3:
            button = 32772;
            break;
        
        case 4:
            button = 32773;
            break;
        
        case 5:
            button = 32775;
            break;
        
        case 6:
            button = 32774;
            break;
        
        case 7:
            button = 32776;
            break;
        
        case 8:
            button = 32777;
            break;
        
        case 9:
            button = 32778;
            break;
        
        case 10:
            button = 32779;
            break;
        
        case 11:
            button = 32780;
            break;
        
        default:
            button = argument1;
            break;
    }
    
    return gamepad_button_value(jid, button) != 0;
}
