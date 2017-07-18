// Generate more level pieces
repeat (2) generatePiece();

// Move all level pieces down
with (oLevelPiece) {
    shiftSpeed = 4;
}

// How long to shift things for
alarm[1] = JUMP_TIME;

// Add to score
score += LEAP_POINTS;
