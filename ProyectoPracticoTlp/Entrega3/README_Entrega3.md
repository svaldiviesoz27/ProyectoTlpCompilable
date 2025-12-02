# Entrega 3 - Integración (Motor + Analizador)

## Requisitos
- g++ compatible con C++98/C++03 (Dev-C++ 5 con MinGW funciona)
- Consola de texto (no se requiere SDL ni JSON)

## Compilar
```bash
make
```
En Windows (Dev-C++ 5 / MinGW en el `PATH`) puedes usar `run.bat`, que compila
automáticamente si no existe el ejecutable.

## Ejecutar
```bash
./bin/motor_integration games/snake.script
```
O sin argumentos para ver el menú y escoger Tetris o Snake.

### En Windows
```bat
run.bat
```
Al ejecutar `run.bat` se compila (si hace falta) y luego arranca el menú para
elegir Tetris o Snake en consola.
