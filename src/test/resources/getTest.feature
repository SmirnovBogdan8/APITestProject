#language: ru
Функционал: Проверить методы GET

  Сценарий: LIST USERS
    Дано Установить URL "https://reqres.in"
    Когда Методом GET получить данные по эндпоинту "/api/users?page=2"
    Тогда Статус-код ответа должен быть 200

  Сценарий: SINGLE USER
    Дано Установить URL "https://reqres.in"
    Когда Методом GET получить данные по эндпоинту "/api/users/2"
    Тогда Статус-код ответа должен быть 200

  Сценарий: SINGLE USER NOT FOUND
    Дано Установить URL "https://reqres.in"
    Когда Методом GET получить данные по эндпоинту "/api/users/23"
    Тогда Статус-код ответа должен быть 404

  Сценарий: LIST <RESOURCE>
    Дано Установить URL "https://reqres.in"
    Когда Методом GET получить данные по эндпоинту "/api/unknown"
    Тогда Статус-код ответа должен быть 200

  Сценарий: SINGLE <RESOURCE>
    Дано Установить URL "https://reqres.in"
    Когда Методом GET получить данные по эндпоинту "/api/unknown/2"
    Тогда Статус-код ответа должен быть 200

  Сценарий: SINGLE <RESOURCE> NOT FOUND
    Дано Установить URL "https://reqres.in"
    Когда Методом GET получить данные по эндпоинту "/api/unknown/23"
    Тогда Статус-код ответа должен быть 404

  Сценарий: DELAYED RESPONSE
    Дано Установить URL "https://reqres.in"
    Когда Методом GET получить данные по эндпоинту "/api/users?delay=3"
    Тогда Статус-код ответа должен быть 200