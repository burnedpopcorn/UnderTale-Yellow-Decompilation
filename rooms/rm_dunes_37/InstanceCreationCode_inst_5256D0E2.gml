target_direction = 90;

if (global.route == 3)
{
    message[0] = "* (There is nothing of note#  inside.)";
    exit;
}

switch (global.dunes_flag[20])
{
    case 1:
        message[0] = "* (You peer through the#  window...)";
        message[1] = "* (You see a monster putting#  random liquids in several#  syringes.)";
        break;
    
    case 2:
    case 3:
        message[0] = "* (You peer through the window...)";
        message[1] = "* (You see the doctor using a#  defibrillator to wake a monster#  up.)";
        break;
    
    case 4:
    case 5:
        message[0] = "* (You peer through the window...)";
        message[1] = "* (You see a monster#  color-coordinating their#  pills.)";
        break;
    
    case 6:
    case 7:
        message[0] = "* (You peer through the#  window...)";
        message[1] = "* (You see the doctor cowering#  in a corner as another monster#  eats an apple.)";
        break;
    
    case 8:
    case 9:
        message[0] = "* (You peer through the window...)";
        message[1] = "* (You see the doctor holding a#  buzzsaw... He's making a new#  bed.)";
        break;
    
    case 10:
        message[0] = "* (You peer through the window...)";
        message[1] = "* (You see several monsters on#  their way to full health.)";
        break;
}
