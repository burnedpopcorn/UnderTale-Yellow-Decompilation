function scr_arc_jump(arg0, arg1)
{
    var jump_target_x = arg0;
    var jump_target_y = arg1;
    var _xd = jump_target_x - x;
    var _yd = jump_target_y - y;
    
    if (_xd == 0)
        _xd = 1;
    
    gravity = 1.5;
    var _hsp = (sign(_xd) * sqrt(abs(_xd))) / 1.5;
    var _time = ceil(_xd / _hsp);
    hspeed = _xd / _time;
    vspeed = (_yd / _time) - ((gravity / 2) * (_time + 1));
    alarm[0] = _time;
    
    if (round(x) == jump_target_x && round(y) == jump_target_y)
    {
        hspeed = 0;
        vspeed = 0;
        x = jump_target_x;
        y = jump_target_y;
        gravity = 0;
        return true;
    }
    
    return false;
}
