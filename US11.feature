Feature: Compra de componentes/dispositivos reciclados

  Como usuario quiero comprar componentes o dispositivos reciclados que se encuentran en ReciApp.

  Scenario: Compra exitosa de componentes/dispositivos reciclados
    Given el usuario está autenticado en la aplicación
    When el usuario accede a la sección de compra de componentes/dispositivos reciclados
    And el usuario selecciona un componente/dispositivo reciclado para comprar
    And el usuario completa el proceso de compra
    Then se realiza con éxito la compra del componente/dispositivo reciclado
    And se muestra un mensaje de confirmación

  Examples:
    | Situación                            | Descripción                                                                       |
    | Compra con datos válidos             | El usuario realiza una compra exitosa proporcionando información válida.          |
    | Carrito de compras vacío             | El usuario intenta realizar una compra con el carrito de compras vacío.           |
    | Componente/dispositivo no disponible | El usuario intenta comprar un componente/dispositivo que no está disponible.      |
    | Fallo en el proceso de compra        | Se produce un fallo durante el proceso de compra y no se completa la transacción. |

    