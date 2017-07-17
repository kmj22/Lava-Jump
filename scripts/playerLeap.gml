// Generate more level pieces
repeat (2) generatePiece();

// Move all level pieces down
with (oLevelPiece) {
    y += LEAP_HEIGHT;
}

// Add to score
score += LEAP_POINTS;
