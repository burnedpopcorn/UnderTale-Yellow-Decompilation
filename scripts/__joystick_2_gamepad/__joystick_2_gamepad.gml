function __joystick_2_gamepad(arg0)
{
    if (arg0 == 2)
        return global.__jstick_pad2;
    else
        return global.__jstick_pad1;
}
