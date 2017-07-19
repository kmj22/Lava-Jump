with (oLevelGenerator){
    var piece = noone;

    // if the last piece was a hazard, this one needs to be safe
    // there should also be a chance we'll pick a safe anyway
    if lastPieceWasHazard || choose(true, false){
        lastPieceWasHazard = false;
        piece = getFloor();
    }
    else{
        lastPieceWasHazard = true;
        piece = getHazard();
    }
    
    switch(piece){
        case PIECES.ground:
            instance_create(x,y,oFloor);
            break;        
        case PIECES.ground_cracked:
            instance_create(x,y,oFloorCracked);
            break;        
        case PIECES.ground_h:
            instance_create(x,y,oFloorH); 
            break;
        case PIECES.frog:
            instance_create(x,y,oFloor);
            instance_create(x,y,oFrog); 
            break;
        case PIECES.turtle:
            instance_create(x,y,oTurtle); 
            break;
       case PIECES.banana:
            instance_create(x,y,oFloor);
            instance_create(x,y,oBanana); 
            break;
       case PIECES.wall_h:
            instance_create(x,y,oWallH);
            break;
    }
    
    // move up to generate next piece
    y -= HOP_HEIGHT;
}



