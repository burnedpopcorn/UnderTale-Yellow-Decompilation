if (scr_interact() && keyboard_multicheck_pressed(0))
{
    scr_text();
    
    with (msg)
    {
        if (global.route == 3)
        {
            message[0] = "* (A cork board with several#  unimportant notes on it.)";
            exit;
        }
        
        switch (other.waiter)
        {
            case 0:
                message[0] = "* (A few sticky notes are pinned#  to the cork board.)\t";
                message[1] = "* Will someone tell Dr. Fish to#  stop using the lab to create#  colored slime?\t";
                message[2] = "* I don't care if it makes funny#  noises, it does not count as#  work.";
                other.waiter = 1;
                break;
            
            case 1:
                message[0] = "* (A few sticky notes are pinned#  to the cork board.)\t";
                message[1] = "* Todo: -Try new things -Fail#  miserably -Quit my job.";
                other.waiter = 2;
                break;
            
            case 2:
                message[0] = "* (A few sticky notes are pinned#  to the cork board.)";
                message[1] = "* (This one consists of all 31#  trillion numbers of pi written#  in crayon.)";
                other.waiter = 3;
                break;
            
            case 3:
                message[0] = "* (A few sticky notes are pinned#  to the cork board.)";
                message[1] = "* (This one points to the note#  with the pi numbers.)\t";
                message[2] = "* What a showoff.";
                message[3] = "* Check it: pi x infinity.\t";
                message[4] = "* Owned B)";
                other.waiter = 0;
                break;
        }
    }
}
