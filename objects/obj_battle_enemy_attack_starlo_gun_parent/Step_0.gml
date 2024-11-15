var i;

x_target = lengthdir_x(dash_length, direction);
y_target = lengthdir_y(dash_length, direction);
line_offset += 3;

if (line_offset >= 20)
    line_offset -= 20;

for (i = line_segments; i > 0; i--)
{
    x_start[i] = x + lengthdir_x(line_offset, direction) + lengthdir_x((dash_length + gap_length) * i, direction);
    y_start[i] = y + lengthdir_y(line_offset, direction) + lengthdir_y((dash_length + gap_length) * i, direction);
}
