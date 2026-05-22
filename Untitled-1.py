# Taller 1: Vectores en Python
# Ejercicio 1: Vector de nombres con ciclo
print(" Ejercicio 1")
nombres = ["Ana", "Carlos", "Beatriz", "David", "Elena"]

for nombre in nombres:
    print(f"Compañero: {nombre}")


# Ejercicio 2: Notas (Mayor, Menor y Promedio)
print("\n Ejercicio 2 ")
notas = []

# Lectura de 7 notas por teclado
for i in range(7):
    nota = float(input(f"Ingrese la nota {i + 1}: "))
    notas.append(nota)

# Cálculos utilizando funciones integradas de Python
nota_mayor = max(notas)
nota_menor = min(notas)
promedio = sum(notas) / len(notas)

print(f"a) La nota mayor es: {nota_mayor}")
print(f"b) La nota menor es: {nota_menor}")
print(f"c) El promedio de notas es: {promedio:.2f}")


# Ejercicio 3: Modificar el quinto elemento
print("\nEjercicio 3")
# Vector con 10 números enteros iniciales
numeros = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]

# Modificación del quinto elemento (índice 4, ya que inicia en 0)
numeros[4] = 99

print(f"Vector actualizado: {numeros}")


# Ejercicio 4: Filtro de edades (>= 18)
print("\nEjercicio 4 ")
edades = []

# Entrada de 5 edades
for i in range(5):
    edad = int(input(f"Ingrese la edad de la persona {i + 1}: "))
    edades.append(edad)

print("Edades mayores o iguales a 18 años:")
for edad in edades:
    if edad >= 18:
        print(edad)

# Ejercicio 5: Eliminar el tercer nombre

print("\nEjercicio 5 ")
# Usamos el vector del Ejercicio 1
print(f"Vector original: {nombres}")

# Se elimina el tercer nombre (índice 2)
nombres.pop(2)

print(f"Vector resultante: {nombres}")