function lines_intersect(arg0, arg1, arg2, arg3, arg4, arg5, arg6, arg7)
{
    var _x1 = arg0;
    var _y1 = arg1;
    var _x2 = arg2;
    var _y2 = arg3;
    var _x3 = arg4;
    var _y3 = arg5;
    var _x4 = arg6;
    var _y4 = arg7;
    var _dir1 = point_direction(_x1, _y1, _x2, _y2);
    var _dir2 = point_direction(_x1, _y1, _x3, _y3);
    var _dir3 = point_direction(_x1, _y1, _x4, _y4);
    var _dir4 = point_direction(_x3, _y3, _x4, _y4);
    var _dir5 = point_direction(_x3, _y3, _x1, _y1);
    var _dir6 = point_direction(_x3, _y3, _x2, _y2);
    var _diff1 = sign(angle_difference(_dir1, _dir2));
    var _diff2 = sign(angle_difference(_dir1, _dir3));
    
    if (abs(_diff1 + _diff2) > 1)
        return -1;
    
    _diff1 = sign(angle_difference(_dir4, _dir5));
    _diff2 = sign(angle_difference(_dir4, _dir6));
    
    if (abs(_diff1 + _diff2) > 1)
        return -1;
    
    var _C = 90;
    var _A = _dir2 - _dir1;
    var _B = 180 - _A - _C;
    var _c = point_distance(_x1, _y1, _x3, _y3);
    _a = (_c / dsin(_C)) * dsin(_A);
    var _b = (_c / dsin(_C)) * dsin(_B);
    var _l = _b;
    _B = _dir4 - _dir1 - 90;
    _A = 180 - _B - _C;
    
    if (dsin(_A) == 0)
    {
        var _x = mean(max(min(_x1, _x2), min(_x3, _x4)), min(max(_x1, _x2), max(_x3, _x4)));
        var _y = mean(max(min(_y1, _y2), min(_y3, _y4)), min(max(_y1, _y2), max(_y3, _y4)));
        _l = point_distance(_x1, _y1, _x, _y);
        return _l / point_distance(_x1, _y1, _x2, _y2);
    }
    
    _b = (_a / dsin(_A)) * dsin(_B);
    _l += _b;
    var _sc = _l / point_distance(_x1, _y1, _x2, _y2);
    return _sc;
}
