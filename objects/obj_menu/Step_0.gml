if (!transitioning && keyboard_check_pressed(vk_space)) {
    transitioning = true;
    sprite_index = spr_door_open; // Troca para a animação da porta abrindo
    image_speed = 1; // Define a velocidade da animação
}

// Verifica se a animação terminou
if (transitioning && image_index >= image_number - 1) {
    // Inicia o temporizador para o atraso
    if (timer_delay == 0) {
        timer_delay = current_time + 3000; // Aguarda 3 segundos
    } else if (current_time >= timer_delay) {
        room_goto(Tela_Inicial); // Transita para a sala após o atraso
    }
}
