if (!transitioning && keyboard_check_pressed(vk_space)) {
    transitioning = true;
    sprite_index = spr_door_open; 
    image_speed = 1; 
}
if (transitioning && image_index >= image_number - 1) {
    
    if (timer_delay == 0) {
        timer_delay = current_time + 2000;/s
    } else if (current_time >= timer_delay) {
        room_goto(Tela_Inicial);
    }
}
