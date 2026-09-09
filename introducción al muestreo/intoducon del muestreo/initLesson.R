# initLesson.R - 01_Introduccion_al_Muestreo
# Crea una poblacion pequena e ilustrativa para introducir los conceptos
# de poblacion, muestra y marco muestral, antes de trabajar con
# poblaciones mas grandes en las siguientes lecciones.

set.seed(123)

# Poblacion: calificaciones de 10 estudiantes de un grupo pequeno
poblacion <- c(65, 70, 72, 75, 80, 81, 84, 87, 90, 95)

# Tamano de la poblacion (parametro N, se usara para explicar marco muestral)
N <- length(poblacion)

# Identificadores de cada individuo (marco muestral)
id_estudiante <- 1:N
