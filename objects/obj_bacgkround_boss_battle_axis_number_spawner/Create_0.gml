var move;

part_x = round(irandom_range(0, room_width) / 40) * 40;
move = false;

while (move == false)
{
    move = true;
    
    with (obj_bacgkround_boss_battle_axis_number_spawner)
    {
        if (id != other.id && part_x == other.part_x)
        {
            other.part_x += 20;
            move = false;
        }
    }
}

creator = 955;
part_size = choose(1, 1, 1, 2, 2, 3);
size_multiplier = 12 * part_size;
number_count = 9;
alarm[0] = 1;
