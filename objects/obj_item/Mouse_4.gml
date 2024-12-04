
if (mouse_check_button_pressed(mb_left)) {
   
    var blank_space = instance_nearest(x, y, obj_blank_space);

    if (blank_space != noone) {
       
        x = blank_space.x;
        y = blank_space.y;

        instance_destroy(blank_space);
    }
}
