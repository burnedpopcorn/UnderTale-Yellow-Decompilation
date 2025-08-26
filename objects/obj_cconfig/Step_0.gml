if (keyboard_multicheck_pressed(vk_nokey) && control_test == false)
{
    if (binding == false)
        audio_play_sound(snd_confirm, 1, 0);
    
    if (p[0] == true)
        room_goto(rm_config);
    
    if (p[1] == true || p[2] == true || p[3] == true)
        binding = true;
    
    if (p[5] == true)
    {
        global.buttonText1 = "1(A)";
        global.buttonText2 = "2(B)";
        global.buttonText3 = "4(Y)";
        global.button1 = gp_face1;
        global.button2 = gp_face2;
        global.button3 = gp_face4;
        global.gamepad_deadzone = 0.15;
    }
    
    if (p[6] == true)
    {
        control_test = true;
        instance_create(160, 160, obj_testcircle);
    }
}

if (binding == false && control_test == false)
{
    if (global.down_keyp)
    {
        audio_play_sound(snd_mainmenu_select, 1, 0);
        
        for (var n = 0; n <= 6; n++)
        {
            if (p[n] == true && n < 6)
            {
                p[n] = false;
                p[n + 1] = true;
                break;
            }
        }
    }
    
    if (global.up_keyp)
    {
        audio_play_sound(snd_mainmenu_select, 1, 0);
        
        for (var n = 0; n <= 6; n++)
        {
            if (p[n] == true && n > 0)
            {
                p[n] = false;
                p[n - 1] = true;
                break;
            }
        }
    }
    
    if (p[4] == true)
    {
        if (global.left_key && global.gamepad_deadzone > 0.01)
            global.gamepad_deadzone -= 0.01;
        
        if (global.right_key && global.gamepad_deadzone < 0.99)
            global.gamepad_deadzone += 0.01;
    }
}

gamepad_get_device_count();

if (!gamepad_is_connected(0) || gamepad_is_supported() == false)
{
    binding = false;
    exit;
}

if (keyboard_check_pressed(vk_shift) || keyboard_check_pressed(ord("X")))
{
    binding = false;
    waiter = 0;
    
    if (p[1] == true)
        global.buttonText1 = lastText;
    else if (p[2] == true)
        global.buttonText2 = lastText;
    else if (p[3] == true)
        global.buttonText3 = lastText;
    
    exit;
}

var pressedButton, pressedText;

if (binding == true && waiter == 1)
{
    if (gamepad_button_check_pressed(0, gp_face1))
    {
        pressedText = "1(A)";
        pressedButton = 32769;
        waiter = 2;
    }
    else if (gamepad_button_check_pressed(0, gp_face2))
    {
        pressedText = "2(B)";
        pressedButton = 32770;
        waiter = 2;
    }
    else if (gamepad_button_check_pressed(0, gp_face3))
    {
        pressedText = "3(X)";
        pressedButton = 32771;
        waiter = 2;
    }
    else if (gamepad_button_check_pressed(0, gp_face4))
    {
        pressedText = "4(Y)";
        pressedButton = 32772;
        waiter = 2;
    }
}

if (binding == true && waiter == 2)
{
    if (p[1] == true)
    {
        if (pressedButton == global.button2)
        {
            global.button2 = global.button1;
            global.buttonText2 = lastText;
        }
        else if (pressedButton == global.button3)
        {
            global.button3 = global.button1;
            global.buttonText3 = lastText;
        }
        
        global.button1 = pressedButton;
        global.buttonText1 = pressedText;
    }
    else if (p[2] == true)
    {
        if (pressedButton == global.button1)
        {
            global.button1 = global.button2;
            global.buttonText1 = lastText;
        }
        else if (pressedButton == global.button3)
        {
            global.button3 = global.button2;
            global.buttonText3 = lastText;
        }
        
        global.button2 = pressedButton;
        global.buttonText2 = pressedText;
    }
    else if (p[3] == true)
    {
        if (pressedButton == global.button1)
        {
            global.button1 = global.button3;
            global.buttonText1 = lastText;
        }
        else if (pressedButton == global.button2)
        {
            global.button2 = global.button3;
            global.buttonText2 = lastText;
        }
        
        global.button3 = pressedButton;
        global.buttonText3 = pressedText;
    }
    
    binding = false;
    waiter = 0;
}

if (binding == true && waiter == 0)
{
    waiter++;
    
    if (p[1] == true)
    {
        lastText = global.buttonText1;
        global.buttonText1 = "[PRESS BUTTON]";
    }
    else if (p[2] == true)
    {
        lastText = global.buttonText2;
        global.buttonText2 = "[PRESS BUTTON]";
    }
    else if (p[3] == true)
    {
        lastText = global.buttonText3;
        global.buttonText3 = "[PRESS BUTTON]";
    }
}
