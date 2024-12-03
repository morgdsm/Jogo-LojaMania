// Verifica o nome do item clicado (deve corresponder ao nome no global.shopping_list)
var item_name = "spr_banana"; // Altere para o nome do sprite correspondente ao objeto

// Procura o item na lista de compras
var found = false;
for (var i = 0; i < array_length(global.shopping_list); i++) {
    if (global.shopping_list[i].name == item_name) {
        found = true;
        var quantity = global.shopping_list[i].quantity;
        
        // Valida se ainda há quantidade restante
        if (quantity > 0) {
            global.shopping_list[i].quantity -= 1; // Reduz quantidade
            instance_create_layer(160, 90, "Instances", obj_cart); // Adiciona ao carrinho
        } else {
            show_message("Você já adicionou todos os itens necessários para este produto!");
        }
        break;
    }
}

// Mensagem de erro se o item não estiver na lista
if (!found) {
    show_message("Este item não está na lista de compras!");
}
