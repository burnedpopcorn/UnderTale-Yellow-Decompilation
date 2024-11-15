function lines_intersect(argument0, argument1, argument2, argument3, argument4, argument5, argument6, argument7)
{
    var _x1, _y1, _x2, _y2, _x3, _y3, _x4, _y4, _dir1, _dir2, _dir3, _dir4, _dir5, _dir6, _diff1, _diff2, _C, _A, _B, _c, _b, _l, _x, _y, _sc;
    
    _x1 = argument0;
    _y1 = argument1;
    _x2 = argument2;
    _y2 = argument3;
    _x3 = argument4;
    _y3 = argument5;
    _x4 = argument6;
    _y4 = argument7;
    _dir1 = point_direction(_x1, _y1, _x2, _y2);
    _dir2 = point_direction(_x1, _y1, _x3, _y3);
    _dir3 = point_direction(_x1, _y1, _x4, _y4);
    _dir4 = point_direction(_x3, _y3, _x4, _y4);
    _dir5 = point_direction(_x3, _y3, _x1, _y1);
    _dir6 = point_direction(_x3, _y3, _x2, _y2);
    _diff1 = sign(angle_difference(_dir1, _dir2));
    _diff2 = sign(angle_difference(_dir1, _dir3));
    
    if (abs(_diff1 + _diff2) > 1)
        return -1;
    
    _diff1 = sign(angle_difference(_dir4, _dir5));
    _diff2 = sign(angle_difference(_dir4, _dir6));
    
    if (abs(_diff1 + _diff2) > 1)
        return -1;
    
    _C = 90;
    _A = _dir2 - _dir1;
    _B = 180 - _A - _C;
    _c = point_distance(_x1, _y1, _x3, _y3);
    _a = (_c / dsin(_C)) * dsin(_A);
    _b = (_c / dsin(_C)) * dsin(_B);
    _l = _b;
    _B = _dir4 - _dir1 - 90;
    _A = 180 - _B - _C;
    
    if (dsin(_A) == 0)
    {
        _x = mean(max(min(_x1, _x2), min(_x3, _x4)), min(max(_x1, _x2), max(_x3, _x4)));
        _y = mean(max(min(_y1, _y2), min(_y3, _y4)), min(max(_y1, _y2), max(_y3, _y4)));
        _l = point_distance(_x1, _y1, _x, _y);
        return _l / point_distance(_x1, _y1, _x2, _y2);
    }
    
    _b = (_a / dsin(_A)) * dsin(_B);
    _l += _b;
    _sc = _l / point_distance(_x1, _y1, _x2, _y2);
    return _sc;
}
