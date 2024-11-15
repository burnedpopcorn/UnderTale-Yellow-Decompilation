event_inherited();

if (interact)
{
    scr_text();
    is_talking = 1;
    
    with (msg)
    {
        switch (other.npc_flag)
        {
            case 0:
                message[0] = "* Eh eh eh, no can do.";
                message[1] = "* Citizens aren't allowed past#  this point.";
                message[2] = "* We're currently under heavy#  spider construction as you can#  see.";
                message[3] = "* Ain't set to finish until 20XX#  or so.";
                other.npc_flag++;
                break;
            
            case 1:
                message[0] = "* You think building a spider#  home is simple?";
                message[1] = "* Spin a web here, spin a web#  there, voila, right?";
                message[2] = "* Wrong.";
                message[3] = "* It takes muscle. Eight biceps#  on every worker.";
                message[4] = "* Of course, biceps aren't#  typically part of the leg but#  my team operates above rules.";
                other.npc_flag++;
                break;
            
            case 2:
                message[0] = "* Gonna need you to move along.#  Your presence is intimidating#  everyone here.";
                break;
        }
    }
}
