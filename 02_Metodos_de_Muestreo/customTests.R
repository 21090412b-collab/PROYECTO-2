# customTests.R - 02_Metodos_de_Muestreo
#
# Todas las preguntas de esta leccion se validan con las pruebas estandar
# de swirl (omnitest), que fueron las unicas que se pudieron ejecutar y
# confirmar en este entorno (swirl/swirlify requieren instalar paquetes
# desde CRAN, y este entorno de trabajo no tiene salida a CRAN).
#
# Se deja preparada, a modo de plantilla, una funcion de verificacion
# personalizada por si el equipo desea usarla para el ejercicio de
# muestreo por conglomerados (comprobar que el tamano de la muestra
# obtenida es multiplo de 10, ya que cada conglomerado tiene 10
# integrantes). IMPORTANTE: como no fue posible instalar swirl en este
# entorno, esta funcion debe probarse con test_lesson() en RStudio antes
# de usarla en el curso final; si el equipo no la usa, puede eliminarla.

test_conglomerado_multiplo_10 <- function() {
  val <- e$val
  if (length(val) %% 10 == 0) {
    return(TRUE)
  } else {
    return(FALSE)
  }
}
