var current_position_new;

if (current_position == 3)
{
    stage = 1;
    exit;
}

current_position_new = irandom_range(1, 2);

while (current_position_new == current_position)
    current_position_new = irandom_range(1, 2);

current_position = current_position_new;
alarm[1] = 60;
