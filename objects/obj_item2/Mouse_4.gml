if (mouse_check_button_pressed(mb_left)) {
    // Encontre o espaço vazio mais próximo (obj_blank_space2)
    var blank_space = instance_nearest(x, y, obj_blank_space2);

    // Verifica se encontrou um espaço vazio
    if (blank_space != noone && !blank_space.filled) {
        // Mova o item para a posição do espaço vazio
        x = blank_space.x;
        y = blank_space.y;

        // Marca o espaço como preenchido
        blank_space.filled = true;

        // Opcional: Destrua o item após colocá-lo
        // instance_destroy(self);
    } else {
        // Feedback opcional caso não haja espaço disponível
        show_message("Espaço já ocupado ou não encontrado!");
    }
}
