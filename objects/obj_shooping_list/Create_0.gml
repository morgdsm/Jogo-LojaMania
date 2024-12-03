// Lista global
global.shopping_list = []; 

// Itens disponíveis no jogo
var items = [
    {name: "spr_banana", quantity: irandom_range(1, 5)},
    {name: "spr_milk", quantity: irandom_range(1, 5)},
    {name: "spr_bread", quantity: irandom_range(1, 5)},
    {name: "spr_apple", quantity: irandom_range(1, 5)}
];

// Seleciona aleatoriamente 2 a 4 itens para a lista
var num_items = irandom_range(2, 4);
for (var i = 0; i < num_items; i++) {
    var item_index = irandom(array_length(items) - 1);
    var selected_item = items[item_index];
    
    // Adiciona o item à lista global, incluindo o initial_quantity
    array_push(global.shopping_list, {
        name: selected_item.name,
        quantity: selected_item.quantity,
        initial_quantity: selected_item.quantity
    });
    
    // Remove o item da lista original para evitar duplicatas
    array_delete(items, item_index, 1);
}
