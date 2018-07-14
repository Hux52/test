ButtonText = argument0;
Result = false;

//Find corners of button
BoxTop = CurrentY;
TextTop = BoxTop + margin/2;
BoxBottom = BoxTop + margin + string_height(ButtonText);
HalfTextWidth = string_width(ButtonText) / 2;
BoxLeft = x - HalfTextWidth - (margin);
BoxRight = x + HalfTextWidth + (margin);

//is the cursor over it
if (device_mouse_x_to_gui(0) > BoxLeft and device_mouse_x_to_gui(0) < BoxRight and device_mouse_y_to_gui(0) > BoxTop and device_mouse_y_to_gui(0) < BoxBottom){
draw_set_alpha(0.8);
    if (mouse_check_button_pressed(mb_left)){
        Result = true;
    }
} else {
    draw_set_alpha(0.4);
}

draw_set_colour(make_colour_hsv(0,0,0));

draw_rectangle(BoxLeft,BoxTop,BoxRight,BoxBottom,false);
draw_set_alpha(1);

CurrentY = TextTop;

draw_set_colour(c_white);

DrawTextAndUpdateCurrentY(ButtonText);

CurrentY += margin;

return Result;
