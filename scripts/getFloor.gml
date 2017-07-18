var floors = ds_list_create();
var i = 0;

if (score < 200){
    floors[| i++] = PIECES.ground;
}
else if (score < 800){
    repeat(8) floors[| i++] = PIECES.ground;
    repeat(2) floors[| i++] = PIECES.ground_cracked;
}
else {
    repeat(5) floors[| i++] = PIECES.ground;
    repeat(2) floors[| i++] = PIECES.ground_cracked;
    repeat(3) floors[| i++] = PIECES.ground_h;
}

var piece = floors[| irandom(ds_list_size(floors) - 1)]
ds_list_destroy(floors);

return piece;
