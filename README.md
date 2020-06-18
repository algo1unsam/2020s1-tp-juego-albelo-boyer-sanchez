# Picross - ¿Cómo jugar?
Se tiene un tablero de 15 x 15 celdas. El objetivo del juego es descubrir la imagen oculta pintando las celdas correctas.
Para ello se tienen 3 intentos, si se pinta una celda incorrecta, se quita un intento.
A la izquierda y arriba del tablero hay números que indican la cantidad de celdas que hay que pintar. Si en la fila o en
la columna hay más de un número (separados por espacios en las filas) significa que hay celdas de por medio que no se 
pintan. Ejemplo: si en una fila o columna se muestran los números 1 11 1 significa que entre cada conjunto de celdas 
pintadas hay 2 espacios libres (1 + 11 + 1 + (2) = 15). En cambio si hay 5 4, es más difícil detectar los espacios 
libres y las celdad a pintar.
Cuidado que no siempre las filas o columnas se empiezan a pintar desde los extremos del tablero. Si una fila o columna
tiene un 8, hay que buscar la forma de encontrar las celdas correctas.

# Controles
- Teclas direccionales (arriba, abajo, izquierda, derecha) => mover el puntero por el tablero.
- C => pintar celda.
- X => colocar una 'x' para descartar celdas incorrectas / quitar la 'x'.
- Espacio => consultar la cantidad de intentos disponibles.
