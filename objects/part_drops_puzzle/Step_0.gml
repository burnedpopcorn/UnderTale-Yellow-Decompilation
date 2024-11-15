part_emitter_region(part_dropsys, part_dropEm, x - 0.2, x + 0.2, y, y, 2, 1);
part_emitter_stream(part_dropsys, part_dropEm, part_drop, -4);

if (room == rm_snowdin_06_yellow)
{
    if (global.snowdin_flag[2] == 2)
        instance_destroy();
}

if (room == rm_snowdin_19_yellow)
{
    if (global.snowdin_flag[12] == 2)
        instance_destroy();
}
