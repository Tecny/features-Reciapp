Feature: Reseña de almacenes de reciclaje

  Como usuario quiero compartir mi experiencia con el almacén previamente citado para que mis comentarios sirvan a otros 
  usuarios a la hora de decidir su almacén de reciclaje.

  Scenario: Compartir reseña de almacén de reciclaje
    Given el usuario está autenticado en la aplicación
    When el usuario accede a la sección de reseñas del almacén de reciclaje seleccionado
    And el usuario escribe una reseña detallando su experiencia
    And el usuario envía la reseña
    Then la reseña es publicada y está disponible para otros usuarios
    And otros usuarios pueden ver y valorar la reseña

  Examples:
    | Situación                                  | Descripción                                                                                        |
    | Reseña exitosa                             | El usuario escribe y publica con éxito una reseña detallada de su experiencia.                     |
    | Sin autenticación                          | El usuario no autenticado intenta dejar una reseña y recibe un mensaje de autenticación requerida. |
    | Edición de reseña                          | El usuario puede editar su reseña después de haberla publicado.                                    |
    | Valoración positiva de otros usuarios      | Otros usuarios valoran positivamente la reseña del usuario.                                        |



    