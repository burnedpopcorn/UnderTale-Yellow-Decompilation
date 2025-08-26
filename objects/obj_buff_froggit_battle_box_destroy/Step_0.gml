if (live_call())
    return global.live_result;

for (var i = 0; i <= 3; i++)
{
    var move_dir = 45 + (i * 90);
    xx[i] = xx[i] + lengthdir_x(10, move_dir);
    yy[i] = yy[i] + lengthdir_y(10, move_dir);
    iangle[i] += sign(0.1 - (i % 2)) * 15;
}
