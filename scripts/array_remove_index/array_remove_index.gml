/// @function array_remove_index(arr, index)
/// @description Remove o elemento de um array na posição especificada
/// @param arr O array original
/// @param index O índice a ser removido
/// @return Um novo array sem o índice especificado
function array_remove_index(arr, index) {
    var new_array = [];
    for (var i = 0; i < array_length_1d(arr); i++) {
        if (i != index) {
            array_push(new_array, arr[i]);
        }
    }
    return new_array;
}
