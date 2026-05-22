 #ejercicios prácticos
# A. Manejo de Vectores
#ejercicio 4: Cargar, modificar y analizar un vector

print("Ejercicio 4: Análisis de Vector de 15 Elementos")
vector = []

# 1. Cargar el vector pidiendo los valores al usuario
for i in range(15):
    valor = int(input(f"Ingrese el entero para la posición {i + 1}: "))
    vector.append(valor)

# 2. Análisis de datos
# Encontrar valores
mayor_valor = max(vector)
menor_valor = min(vector)
promedio = sum(vector) / len(vector)

# Encontrar posiciones (sumamos 1 para que sea legible para el usuario)
posicion_mayor = vector.index(mayor_valor) + 1
posicion_menor = vector.index(menor_valor) + 1

# 3. Mostrar resultados iniciales
print("\n--- Resultados del Análisis ---")
print(f"Vector original: {vector}")
print(f"El mayor valor es {mayor_valor} y se encuentra en la posición {posicion_mayor}")
print(f"El menor valor es {menor_valor} y se encuentra en la posición {posicion_menor}")
print(f"El promedio de los valores es: {promedio:.2f}")

# 4. Modificar una posición específica
print("\n--- Modificación de Elemento ---")
# Se solicita la posición usando el rango natural (1 a 15)
posicion_cambio = int(input("Ingrese la posición que desea modificar (1 al 15): "))

# Validación básica de la posición ingresada
if 1 <= posicion_cambio <= 15:
    nuevo_valor = int(input(f"Ingrese el nuevo valor para la posición {posicion_cambio}: "))
    
    # Se resta 1 porque los índices en Python comienzan en 0
    vector[posicion_cambio - 1] = nuevo_valor
    
    print("\n--- Vector Actualizado ---")
    print(f"Vector resultante: {vector}")
else:
    print("Error: La posición ingresada no es válida (debe ser entre 1 y 15).")


#ejercicio 5
def matriz_notas_estudiantes():
    n_estudiantes = int(input("Cuántos estudiantes"))
    n_notas = int(input("cuantas notas"))
    matriz = []

#pedir notas estudiantes 

for i in range ("n_estudiantes"):
    fila = []
    print (f"n_notas)del estudiante {i+1}:")
    for j in range ("n_notas")
    while true:
        try: 
            nota = float(input(f"nota ¨{j+1}:"))
            fila.append(nota)
            break 
        except ValueError:
            print("ingrese un numero valido")
            matriz.append(fila)

#ejercico 6 
n = int(input("Tamaño N: "))

# Llenar la matriz en una sola línea anidada
matriz = [[int(input(f"Pos [{i+1}][{j+1}]: ")) for j in range(n)] for i in range(n)]

# Mostrar matriz
print("\nMatriz:")
for f in matriz: print(*(f"{num:4d}" for num in f))

# Cálculos con comprensión de listas
suma_principal = sum(matriz[i][i] for i in range(n))
suma_secundaria = sum(matriz[i][n - 1 - i] for i in range(n))
encima_principal = [matriz[i][j] for i in range(n) for j in range(n) if j > i]

# Resultados
print(f"\nSuma Diagonal Principal: {suma_principal}")
print(f"Suma Diagonal Secundaria: {suma_secundaria}")
print(f"Elementos por encima de la principal: {encima_principal}")


#ejercicio 7 

# 1. Entrada de datos express

n_prod = int(input("Cant. productos: "))
nombres = [input(f"Prod {i+1}: ").strip() for i in range(n_prod)]
matriz = [[int(input(f"  {nombres[i]} - Mes {m+1}: ")) for m in range(6)] for i in range(n_prod)]

# 2. Funciones en formato compacto
proms = [sum(f)/6 for f in matriz]
func_prom = lambda: print(f"\nMax prom: {nombres[proms.index(max(proms))]}\nMin prom: {nombres[proms.index(min(proms))]}")
func_total = lambda: print(f"Total global: {sum(sum(f) for f in matriz)}")

def consultar():
    busc = input("\nConsultar producto: ").lower()
    idx = [n.lower() for n in nombres].index(busc) if busc in [n.lower() for n in nombres] else -1
    print(f"Total {nombres[idx]}: {sum(matriz[idx])}" if idx != -1 else "No encontrado")

# 3. Ejecución directa
func_prom()
func_total()
consultar()

#ejercicio 8 
n = int(input("Ingrese N (>= 6): "))

# 1. Generar los números por filas y voltear las impares [::-1]
matriz = []
for i in range(n):
    fila = list(range(i * n + 1, (i + 1) * n + 1))
    matriz.append(fila if i % 2 == 0 else fila[::-1])

# 2. Imprimir la matriz perfectamente alineada por filas
print("\nMatriz Serpiente:")
for f in matriz: 
    print(*(f"{num:4d}" for num in f))



#ejercicio 9 
def validar_sudoku():
    # 1. Llenar matriz 3x3 y aplanar todos los números en una lista única
    nums = [int(input(f"Pos [{i+1}][{j+1}]: ")) for i in range(3) for j in range(3)]
    
    # 2. Convertir a conjuntos para operaciones lógicas rápidas
    todos = set(range(1, 10))
    ingresados = set(nums)
    
    # Encontrar faltantes y repetidos mediante diferencias de conjuntos
    faltantes = todos - ingresados
    repetidos = set(x for x in nums if nums.count(x) > 1 and x in todos)

    # 3. Evaluar validez
    if len(ingresados) == 9 and all(1 <= x <= 9 for x in nums):
        print("\n¡La cuadrícula es VÁLIDA para Sudoku fácil!")
    else:
        print("\nLa cuadrícula NO es válida.")
        if faltantes: print(f"-> Faltantes: {list(faltantes)}")
        if repetidos: print(f"-> Repetidos: {list(repetidos)}")

# Ejecución
validar_sudoku()
