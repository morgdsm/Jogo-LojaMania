var start_x = room_width - 100; // Posição no lado direito da tela
var start_y = 20;
var line_spacing = 30;

for (var i = 0; i < array_length(global.shopping_list); i++) {
    var item = global.shopping_list[i];
    var sprite_name = asset_get_index(item.name);
    var quantity = item.quantity;
    
    // Desenha a sprite e a quantidade
    draw_sprite(sprite_name, 0, start_x, start_y + i * line_spacing);
    draw_text(start_x + 40, start_y + i * line_spacing, "x" + string(quantity));
}
