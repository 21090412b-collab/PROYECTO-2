# initLesson.R - 04_Aplicacion_Integral
#
# Prepara la poblacion para el problema integrador final: el desempeno de
# 10 servidores de una plataforma de software (500 solicitudes registradas
# en total), sobre la cual el estudiante debera elegir un metodo de
# muestreo, justificarlo, extraer muestras, calcular estadisticos y
# analizar la distribucion muestral resultante.
#
# set.seed(2024) asegura que "tiempo_ms" y "error" sean reproducibles,
# de forma que la retroalimentacion de la leccion (que compara el
# estadistico del estudiante contra un rango esperado) funcione igual
# en cualquier computadora.

set.seed(2024)

poblacion_servidores <- data.frame(
  id             = 1:500,
  servidor       = rep(paste0("Srv", 1:10), each = 50),   # posibles conglomerados
  tiempo_ms      = round(rnorm(500, mean = 120, sd = 25), 1),
  error          = rbinom(500, 1, 0.08)                    # 1 = solicitud con error
)

N_servidores <- nrow(poblacion_servidores)

# Estadisticos poblacionales de referencia, usados por la leccion para dar
# retroalimentacion contextual (no se muestran directamente al estudiante
# antes de la actividad).
media_tiempo_real <- mean(poblacion_servidores$tiempo_ms)
tasa_error_real   <- mean(poblacion_servidores$error)
