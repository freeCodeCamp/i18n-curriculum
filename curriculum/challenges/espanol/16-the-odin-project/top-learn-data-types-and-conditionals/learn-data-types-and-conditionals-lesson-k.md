---
id: 65e9728d484dd50f720e6ff0
title: Aprenda tipos de datos y condicionales lección K
challengeType: 15
dashedName: learn-data-types-and-conditionals-lesson-k
---

# --description--

La declaración `switch` se utiliza para realizar diferentes acciones basadas en diferentes condiciones. Es similar a la sentencia `if-else`, pero es más legible y fácil de entender cuando hay múltiples condiciones para verificar. La declaración `switch` se utiliza para seleccionar uno de muchos bloques de código a ejecutar.

La declaración `switch` evalúa una expresión y la compara con los valores de cada caso. Si hay una coincidencia, se ejecuta el bloque de código asociado. Si no hay coincidencia, se ejecuta el bloque de código por defecto.

```javascript
let day = "Monday";

switch (day) {
  case "Monday":
    console.log("Today is Monday");
    break;
  case "Tuesday":
    console.log("Today is Tuesday");
    break;
  case "Wednesday":
    console.log("Today is Wednesday");
    break;
  case "Thursday":
    console.log("Today is Thursday");
    break;
  case "Friday":
    console.log("Today is Friday");
    break;
  case "Saturday":
    console.log("Today is Saturday");
    break;
  case "Sunday":
    console.log("Today is Sunday");
    break;
  default:
    console.log("Invalid day");
}
```

En el ejemplo anterior, el valor de la variable `day` se compara con los valores de cada caso. If there is a match, the associated block of code is executed. If there is no match, the default block of code is executed.

# --preguntas----preguntas--

## --text--

Given the JavaScript code snippet below, which modifies the `activity` variable based on the day of the week, what will be the value of the `activity` variable if the value of the `day` variable is `"Tuesday"`?

```javascript
let day = "Tuesday";
let activity;

switch (day) {
  case "Monday":
    activity = "Go to the gym";
    break;
  case "Tuesday":
    activity = "Attend coding meetup";
    break;
  case "Wednesday":
    activity = "Watch a movie";
    break;
  case "Thursday":
    activity = "Visit a museum";
    break;
  case "Friday":
    activity = "Dinner with friends";
    break;
  case "Saturday":
    activity = "Hiking in the mountains";
    break;
  case "Sunday":
    activity = "Rest at home";
    break;
  default:
    activity = "Undefined day";
}

```

## --answers--

The value of the `activity` variable will be `"Attend coding meetup"`.

---

The value of the `activity` variable will be `"Watch a movie"`.

---

The value of the `activity` variable will be `"Undefined day"`.

---

The value of the `activity` variable will be `"Go to the gym"`.

## --video-solution--

1
