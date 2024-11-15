image_speed = 0.4;

switch (room)
{
    case rm_dunes_24:
    case rm_dunes_28:
        sprite_index = spr_elevator_propeller_light;
        break;
}

depth = obj_pulley_elevator.depth;
y_difference = obj_pulley_elevator.y - y;
