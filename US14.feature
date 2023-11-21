Feature: Comunicarse con soporte técnico

  Como usuario quiero poder comunicarme con soporte técnico en caso de no poder efectuar correctamente mi compra.

  Scenario: Comunicarse con soporte técnico en caso de problemas con la compra
    Given el usuario está autenticado en la aplicación
    And el usuario intenta realizar una compra
    And se presenta un problema durante el proceso de compra
    When el usuario busca la opción de comunicarse con soporte técnico
    Then el usuario puede enviar un mensaje detallando el problema
    And se recibe una respuesta del soporte técnico

  Examples:
    | Situación                          | Descripción                                                               |
    | Problema de pago                   | El usuario encuentra un problema con el método de pago durante la compra. |
    | Error en la transacción            | Se produce un error inesperado durante la transacción de compra.          |
    | Artículo no disponible             | El usuario intenta comprar un artículo que no está disponible.            |
    | Respuesta rápida del soporte       | El soporte técnico responde rápidamente al mensaje del usuario.           |


    