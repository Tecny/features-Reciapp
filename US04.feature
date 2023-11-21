Feature: Borrar cuenta de usuario

  Como usuario quiero borrar mi cuenta para ya no seguir usando la aplicación.

  Scenario: Borrar cuenta con éxito
    Given el usuario está autenticado en la aplicación
    When el usuario accede a la configuración de la cuenta
    And el usuario selecciona la opción de borrar cuenta
    Then se muestra un mensaje de confirmación
    And el usuario confirma la acción de borrar la cuenta
    And se elimina con éxito la cuenta del usuario

  Examples: 
    | Situación                    | Descripción                                                                     |
    | Borrar cuenta confirmado     | El usuario confirma y borra su cuenta con éxito.                                |
    | Cancelar borrar cuenta       | El usuario decide cancelar la acción de borrar su cuenta.                       |
    | Autenticación requerida      | El usuario no está autenticado y no puede acceder a la opción de borrar cuenta. |
    | Confirmación adicional       | Se requiere confirmación adicional antes de borrar la cuenta.                   |

    