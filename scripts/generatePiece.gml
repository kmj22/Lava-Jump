with (oLevelGenerator){
    // if the last piece was a gap, this one needs to be solid
    // otherwise, we can randomly decide if it should be solid
    if lastPiece == PIECES.gap || choose(true, false){
        instance_create(x,y,oFloor);
        lastPiece = PIECES.ground;
    }
    else{
        lastPiece = PIECES.gap;
    }
    
    y -= HOP_HEIGHT;
}



