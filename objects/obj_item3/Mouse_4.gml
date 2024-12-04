if (mouse_check_button_pressed(mb_left)) {
   
    var blank_space = instance_nearest(x, y, obj_blank_space3);

   
    if (blank_space != noone && !blank_space.filled) {
      
        x = blank_space.x;
        y = blank_space.y;

        blank_space.filled = true;

    } else {
      
        show_message("Espaço já ocupado ou não encontrado!");
    }
}
