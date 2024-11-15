var i;

for (i = 0; i < array_length(line_y); i++)
{
    line_y[i] += 4;
    
    if (line_y[i] > 500)
        instance_destroy();
}
