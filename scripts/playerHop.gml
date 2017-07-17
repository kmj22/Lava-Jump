// Generate more level pieces
generatePiece();

// Move all level pieces down
with (oLevelPiece) {
    y += HOP_HEIGHT;
}

// Add to score
score += HOP_POINTS;
