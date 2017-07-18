var hazards = ds_list_create();
var i = 0;

// add objects to the hazards list a certain number of times
// this is used to determine its probability of being picked

if (score < 200){
    hazards[| i++] = PIECES.gap;
}
else if (score < 600){
    repeat(2) hazards[| i++] = PIECES.gap;
    repeat(1) hazards[| i++] = PIECES.banana;
}
else if (score < 1200){
    repeat(4) hazards[| i++] = PIECES.gap;
    repeat(1) hazards[| i++] = PIECES.banana;
    repeat(1) hazards[| i++] = PIECES.wall_h;
}
else{
    repeat(4) hazards[| i++] = PIECES.gap;
    repeat(2) hazards[| i++] = PIECES.banana;
    repeat(1) hazards[| i++] = PIECES.wall_h;
}

// pick a random piece, then destroy list
var piece = hazards[| irandom(ds_list_size(hazards) - 1)]
ds_list_destroy(hazards);

return piece;
