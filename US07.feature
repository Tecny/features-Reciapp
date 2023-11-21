Feature: Registro de dispositivos para donación

  Como usuario quiero poder registrar los dispositivos que deseo donar en la plataforma de ReciApp especificando su estado y ubicación.

  Scenario: Registro exitoso de dispositivos para donación
    Given el usuario está autenticado en la aplicación
    When el usuario accede a la sección de registro de dispositivos para donación
    And el usuario completa el formulario de registro con la siguiente información:
      | Tipo de dispositivo  | Estado del dispositivo | Ubicación         |
      | Smartphone           | Bueno                  | Oficina principal |
    And el usuario envía el formulario de registro
    Then se registra con éxito el dispositivo para donación
    And se muestra un mensaje de confirmación

  Examples:     
    | Situación                        | Descripción                                                                               |
    | Registro con datos válidos       | El usuario proporciona información válida para el registro de dispositivos.               |
    | Registro con datos incompletos   | El usuario no proporciona toda la información requerida para el registro de dispositivos. |
    | Registro de varios dispositivos  | El usuario registra varios dispositivos para donación en una sola sesión.                 |
    | Dispositivo no disponible        | El usuario intenta registrar un dispositivo que no está disponible para donación.         |



    