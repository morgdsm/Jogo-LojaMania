window_set_size(1200, 720);
window_center(); 
sprite_index = spr_background_loop; // Começa com o fundo animado
animation_playing = true; // Controle da animação
transitioning = false; // Verifica se está na transição da porta
timer_delay = 0;       // Temporizador para o atraso