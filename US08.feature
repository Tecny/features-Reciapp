Feature: Recibir orientación y recursos sobre reacondicionamiento de dispositivos

  Como usuario quiero recibir orientación y recursos a través de la plataforma de ReciApp sobre cómo 
  reacondicionar dispositivos electrónicos de manera segura y efectiva para poder extender su vida 
  útil y reducir la necesidad de comprar nuevos.

  Scenario: Acceder a orientación y recursos de reacondicionamiento
    Given el usuario está autenticado en la aplicación
    When el usuario accede a la sección de orientación y recursos de reacondicionamiento
    Then podrá recibir información detallada sobre cómo reacondicionar dispositivos de manera segura y efectiva
    And podrá acceder a recursos, tutoriales y guías relacionadas

  Examples:
    | Situación                     | Descripción                                                                                            |
    | Acceso exitoso                | El usuario accede con éxito a la sección de orientación y recursos de reacondicionamiento.             |
    | Acceso sin autenticación      | El usuario no autenticado intenta acceder a la sección y recibe un mensaje de autenticación requerida. |
    | Contenido informativo         | La sección proporciona contenido informativo y educativo sobre reacondicionamiento de dispositivos.    |
    | Falta de recursos             | La sección no contiene recursos, tutoriales o guías disponibles.                                       |




    