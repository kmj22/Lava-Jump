// Generate more level pieces
generatePiece();

// Move all level pieces down
with (oLevelPiece) {
    alarm[0] = JUMP_TIME;
    shiftSpeed = 2;
}

// Add to score
score += HOP_POINTS;
