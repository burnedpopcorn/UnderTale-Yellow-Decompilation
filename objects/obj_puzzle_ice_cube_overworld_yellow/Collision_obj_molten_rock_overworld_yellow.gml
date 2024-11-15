if (active == false && other.shrink == false)
{
    active = true;
    alarm[0] = 15;
    obj_puzzle_controller_overworld_yellow.camera_end = true;
}

other.canAnimate = 0;
other.canRoll = 0;
