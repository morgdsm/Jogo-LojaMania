// No evento Mouse Left Pressed do obj_item
if (mouse_check_button_pressed(mb_left)) {
    // Encontre o espaço vazio mais próximo (obj_blank_space)
    var blank_space = instance_nearest(x, y, obj_blank_space);

    // Se encontrou um espaço vazio
    if (blank_space != noone) {
        // Mova o item para a posição do espaço vazio
        x = blank_space.x;
        y = blank_space.y;

        // Destrua o objeto obj_blank_space, já que o item foi colocado no espaço
        instance_destroy(blank_space);
    }
}
