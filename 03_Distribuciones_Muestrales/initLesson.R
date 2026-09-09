# initLesson.R - 03_Distribuciones_Muestrales
#
# Prepara una poblacion de usuarios de una aplicacion de software para
# estudiar las distribuciones muestrales de la media, la proporcion y la
# varianza dentro de un contexto de Ingenieria de Software (tiempos de
# respuesta y tasa de conversion de una app).
#
# set.seed(100) se utiliza para que "tiempo_respuesta" (variable continua,
# usada en media y varianza) y "conversion" (variable binaria, usada en
# proporcion) sean identicos en cualquier equipo donde se ejecute la
# leccion, de modo que los histogramas y estadisticos mostrados en el
# texto de la leccion coincidan con lo que obtiene el estudiante.

set.seed(100)

usuarios <- data.frame(
  id                = 1:200,
  dispositivo       = sample(c("Movil", "Laptop", "Tablet"), 200, replace = TRUE),
  tiempo_respuesta  = round(rnorm(200, mean = 2.5, sd = 0.6), 2),
  # Variable binaria: 1 = el usuario completo una compra (convirtio), 0 = no
  conversion        = rbinom(200, 1, 0.35)
)

# Tamano de la poblacion de usuarios
N_usuarios <- nrow(usuarios)

# Parametros poblacionales de referencia (para comparar despues con los
# estadisticos obtenidos en las muestras simuladas)
media_poblacional     <- mean(usuarios$tiempo_respuesta)
proporcion_poblacional <- mean(usuarios$conversion)
varianza_poblacional  <- var(usuarios$tiempo_respuesta)

# Funcion auxiliar: genera "reps" medias muestrales de tamano "n"
# Se deja preparada en initLesson.R para que el estudiante la use
# directamente en varios ejercicios sin tener que escribirla de nuevo.
generar_medias_muestrales <- function(n, reps = 500) {
  replicate(reps, mean(sample(usuarios$tiempo_respuesta, n, replace = TRUE)))
}
