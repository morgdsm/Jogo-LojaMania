// No evento Mouse Left Pressed de obj_shooping_list
if (mouse_check_button_pressed(mb_left)) {
    // Verifica qual item foi clicado (por exemplo, o item "banana")
    var item_name = "banana"; // Nome do item (exemplo)
    var quantity = 3; // Quantidade do item (exemplo)

    // Adiciona item ao carrinho
    if (instance_exists(obj_cart)) {
        // Adiciona item à lista de itens do carrinho
        var cart_items = obj_cart.cart_items; // Supondo que cart_items seja uma lista global
        array_push(cart_items, {name: item_name, quantity: quantity});
    }
}
