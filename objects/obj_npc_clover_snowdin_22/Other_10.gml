var yy, i;

yy = 0;
i = floor(obj_raft_snowdin_22.image_index);

switch (i)
{
    case 0:
    case 1:
    case 12:
        yy = -3;
        break;
    
    case 2:
    case 10:
    case 11:
        yy = -2;
        break;
    
    case 3:
    case 4:
    case 9:
        yy = -1;
        break;
    
    case 5:
    case 6:
    case 7:
    case 8:
        yy = 0;
        break;
}

y = 70 + yy;
