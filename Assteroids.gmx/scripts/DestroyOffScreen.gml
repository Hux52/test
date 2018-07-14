sW = sprite_get_width(sprite_index);
sH = sprite_get_height(sprite_index);

if ((x > room_width + sW) || (x < -sW) || (y > room_height + sH) || (y < -sH)){
    instance_destroy();
}

