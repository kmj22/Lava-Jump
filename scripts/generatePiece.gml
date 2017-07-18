with (oLevelGenerator){
    var piece = noone;

    // if the last piece was a gap, this one needs to be solid
    // there should also be a chance we'll pick a solid anyway
    if (lastPiece == PIECES.gap || lastPiece == PIECES.banana ||
        lastPiece == PIECES.wall_h) || choose(true, false){
        
        piece = getFloor();
    }
    else{
        piece = getHazard();
    }
    
    lastPiece = piece;
    
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



