Feature: Busqueda de almacenes de reciclaje

  Como usuario deseo que la aplicación me proporcione sugerencias de almacenes de reciclaje para poder 
  llevar mis dispositivos al almacén más cercano.

  Scenario: Obtener sugerencias de almacenes de reciclaje
    Given el usuario está autenticado en la aplicación
    When el usuario accede a la sección de sugerencias de almacenes de reciclaje
    Then la aplicación proporciona una lista de almacenes de reciclaje cercanos
    And el usuario puede seleccionar un almacén para obtener más detalles

  Examples:
    | Situación                           | Descripción                                                                                             |
    | Sugerencias disponibles             | La aplicación muestra sugerencias de almacenes de reciclaje cercanos.                                   |
    | Sin almacenes cercanos              | No hay almacenes de reciclaje cercanos disponibles para mostrar.                                        |
    | Selección exitosa del almacén       | El usuario selecciona con éxito un almacén de reciclaje para obtener más detalles.                      |
    | Sin autenticación                   | El usuario no autenticado intenta acceder a la sección y recibe un mensaje de autenticación requerida.  |