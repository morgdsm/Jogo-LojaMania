var start_x = room_width / 2 - 50;
var start_y = room_height / 2 - 50;
var line_spacing = 30;

// Exibe os itens no carrinho
for (var i = 0; i < array_length(global.shopping_list); i++) {
    var item = global.shopping_list[i];
    var sprite_name = asset_get_index(item.name);
    var added_quantity = item.initial_quantity - item.quantity; // Quantidade adicionada

    if (added_quantity > 0) {
        draw_sprite(sprite_name, 0, start_x, start_y + i * line_spacing);
        draw_text(start_x + 40, start_y + i * line_spacing, "x" + string(added_quantity));
    }
}
