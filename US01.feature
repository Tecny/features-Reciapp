Feature: Registro de cuenta de usuario

  Como usuario quiero poder registrarme para tener una cuenta en la aplicación.

  Scenario: Registro exitoso de una nueva cuenta
    Given el usuario accede a la página de registro
    When el usuario completa el formulario de registro con la siguiente información:
      | Nombre      | Correo electrónico       | Contraseña    |
      | Usuario123  | usuario123@example.com   | contraseña123 |
    And el usuario envía el formulario de registro
    Then se crea con éxito una nueva cuenta para el usuario
    And se muestra un mensaje de confirmación de registro

  Examples:
    | Situación                  | Descripción                                                               |
    | Registro con datos válidos | El usuario proporciona información válida para el registro.               |
    | Correo ya registrado       | El usuario intenta registrar un correo electrónico que ya está en uso.    |
    | Contraseña débil           | El usuario intenta registrar una contraseña considerada débil.            |
    | Datos incompletos          | El usuario no proporciona toda la información requerida para el registro. |


    