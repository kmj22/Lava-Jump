var floors = ds_list_create();
var i = 0;

// add objects to the floors list a certain number of times
// this is used to determine its probability of being picked

if (score < 200){
    floors[| i++] = PIECES.ground;
}
else if (score < 600){
    repeat(8) floors[| i++] = PIECES.ground;
    repeat(2) floors[| i++] = PIECES.ground_cracked;
}
else if (score < 1000){
    repeat(5) floors[| i++] = PIECES.ground;
    repeat(3) floors[| i++] = PIECES.ground_cracked;
    repeat(2) floors[| i++] = PIECES.ground_h;
}
else if (score < 1400){
    repeat(5) floors[| i++] = PIECES.ground;
    repeat(2) floors[| i++] = PIECES.ground_cracked;
    repeat(1) floors[| i++] = PIECES.ground_h;
    //repeat(1) floors[| i++] = PIECES.frog;
}
else {
    repeat(3) floors[| i++] = PIECES.ground;
    repeat(3) floors[| i++] = PIECES.ground_cracked;
    repeat(1) floors[| i++] = PIECES.ground_h;
    //repeat(1) floors[| i++] = PIECES.frog;
    repeat(1) floors[| i++] = PIECES.turtle;
}

// pick a random piece, then destroy list
var piece = floors[| irandom(ds_list_size(floors) - 1)]
ds_list_destroy(floors);

return piece;
