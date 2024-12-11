Feature: Ejemplo de karate for Tech Girl Power

  Background:
    * url urlBase

  Scenario Outline: valida la creación de una mascota
    Given path '/pet'
    * def jsonCreatePet =
      """
      {
        "id": 0,
        "category": {
          "id": 0,
          "name": "dogs"
        },
        "name": <petName>,
        "photoUrls": [
          "string"
        ],
        "tags": [
          {
            "id": 0,
            "name": "string"
          }
        ],
        "status": "available"
      }
      """
    And request jsonCreatePet
    When method post
    Then status 200

    Examples:
    | petName   |
    | Vaguito10 |
    | Vaguito11 |
    | Vaguito12 |
    | Vaguito13 |
    | Vaguito14 |

    | Vaguito14 |
    | Vaguito13 |



