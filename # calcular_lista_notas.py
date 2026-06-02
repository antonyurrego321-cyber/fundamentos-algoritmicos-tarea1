# calcular_lista_notas

def calcular_promedio(lista_notas):

    "Calcula y retorna la media aritmética de una lista de números."
    if not lista_notas:
        return 0.0
    return sum(lista_notas) / len(lista_notas)


def solicitar_nota(mensaje):

    "Solicita una nota por teclado y valida que esté entre 0.0 y 5.0."
    while True:
        try:
            nota = float(input(mensaje))
            if 0.0 <= nota <= 5.0:
                return nota
            print("[Error] La nota debe estar en el rango de 0.0 a 5.0.")
        except ValueError:
            print("[Error] Por favor, ingrese un número decimal válido.")


# configuracion e inicializacion 

materias = ["Matemáticas", "Programación", "Física"]
nombres_estudiantes = ["Carlos", "Ana", "Luis"]

# 1.registre notas: estructura de matriz (listas anidadas) dinámica

notas_estudiantes = []

print("=== REGISTRO DE CALIFICACIONES ===")
for estudiante in nombres_estudiantes:
    print(f"\nIngresando notas para: {estudiante}")
    notas_alumno = []
    
    for materia in materias:
        nota = solicitar_nota(f" -> Nota en {materia}: ")
        notas_alumno.append(nota)
        
    notas_estudiantes.append(notas_alumno)


# 3.evalue resultados: Ciclo para procesar y mostrar el estado de cada uno

print("\n" + "="*40)
print("       BOLETÍN DE RESULTADOS Finales")
print("="*40)

nota_minima_aprobatoria = 3.0

for i in range(len(nombres_estudiantes)):
    nombre = nombres_estudiantes[i]
    notas = notas_estudiantes[i]
    
    # llamada a la funcion de promedio 

    promedio_final = calcular_promedio(notas)
    
    # estructura condicional para evaluar la aprobacion 

    if promedio_final >= nota_minima_aprobatoria:
        estado = "APROBADO"
    else:
        estado = "REPROBADO"
        
    # salida formateada con detalles 

    print(f"Estudiante: {nombre:<10}")
    print(f"  Calificaciones: {notas}")
    print(f"  Promedio Final: {promedio_final:.2f}")
    print(f"  Estado Actual : {estado}")
    print("-" * 40)
