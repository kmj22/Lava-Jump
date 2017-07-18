// Generate more level pieces
generatePiece();

// Move all level pieces down
with (oLevelPiece) {
    shiftSpeed = 2;
}

// How long to shift things for
alarm[1] = JUMP_TIME;

// Add to score
score += HOP_POINTS;
