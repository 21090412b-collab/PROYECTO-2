# initLesson.R - 02_Metodos_de_Muestreo
#
# Este archivo prepara una poblacion de estudiantes que se reutiliza durante
# TODA la leccion para practicar los cuatro metodos de muestreo probabilistico
# (aleatorio simple, sistematico, estratificado, conglomerados) y el metodo
# no probabilistico (conveniencia), sin pedir al estudiante que reconstruya
# los datos en cada ejercicio.
#
# set.seed(123) fija la semilla para que "promedio" (variable continua
# simulada con rnorm) sea siempre el mismo en cualquier computadora que
# ejecute la leccion, garantizando reproducibilidad de las actividades.

set.seed(123)

estudiantes <- data.frame(
  id       = 1:100,
  semestre = rep(1:5, each = 20),                 # usado para ESTRATIFICADO
  grupo    = rep(paste0("G", 1:10), each = 10),   # usado para CONGLOMERADOS
  promedio = round(rnorm(100, 8, 1), 1)
)

# Tamano total de la poblacion, usado para calcular el intervalo (k)
# del muestreo sistematico: k <- N / n
N <- nrow(estudiantes)

# Lista de estratos disponibles (para preguntas sobre muestreo estratificado)
estratos <- sort(unique(estudiantes$semestre))

# Lista de conglomerados disponibles (para preguntas sobre muestreo por
# conglomerados)
conglomerados <- sort(unique(estudiantes$grupo))
