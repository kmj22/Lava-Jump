with (oLevelGenerator){
    var piece = noone;
    
    // if the last piece was a gap, this one needs to be solid
    // otherwise, we can randomly decide if it should be solid
    if lastPiece == PIECES.gap || choose(true, false){
        piece = getFloor();
    }
    else{
        piece = PIECES.gap;
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
            instance_create(x,y,oFloor); 
            break;
    }
    
    // move up to generate next piece
    y -= HOP_HEIGHT;
}



