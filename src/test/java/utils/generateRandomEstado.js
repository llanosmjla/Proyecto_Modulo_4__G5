
function fn() {
    var estados = ['nuevo', 'usado', 'reparado'];
    var randomIndex = Math.floor(Math.random() * estados.length);
    return estados[randomIndex];
}