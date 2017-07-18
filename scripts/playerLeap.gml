// Generate more level pieces
repeat (2) generatePiece();

// Move all level pieces down
with (oLevelPiece) {
    alarm[0] = JUMP_TIME;
    shiftSpeed = 4;
}

// Add to score
score += LEAP_POINTS;
