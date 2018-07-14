if (object_index != oAsteroid){
    sW = sprite_get_width(sprite_index)/2;
    sH = sprite_get_height(sprite_index)/2;
    move_wrap(true, true, (sW + sH) / 2);
} else {
    move_wrap(true, true, 60);
}
