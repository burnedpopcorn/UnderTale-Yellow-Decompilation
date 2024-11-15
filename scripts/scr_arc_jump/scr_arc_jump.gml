function scr_arc_jump(argument0, argument1)
{
    var jump_target_x, jump_target_y, _xd, _yd, _hsp, _time;
    
    jump_target_x = argument0;
    jump_target_y = argument1;
    _xd = jump_target_x - x;
    _yd = jump_target_y - y;
    
    if (_xd == 0)
        _xd = 1;
    
    gravity = 1.5;
    _hsp = (sign(_xd) * sqrt(abs(_xd))) / 1.5;
    _time = ceil(_xd / _hsp);
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
