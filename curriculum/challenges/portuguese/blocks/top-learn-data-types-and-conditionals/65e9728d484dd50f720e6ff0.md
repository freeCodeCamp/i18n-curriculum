---
id: 65e9728d484dd50f720e6ff0
title: Lição K de Aprenda tipos de dados e condicionais
challengeType: 15
dashedName: learn-data-types-and-conditionals-lesson-k
---

# --description--

A instrução `switch` é usada para realizar ações diferentes com base em diferentes condições. É semelhante à instrução `if-else`, mas é mais legível e mais fácil de entender quando há várias condições a verificar. A instrução `switch` é usada para selecionar um de muitos blocos de código a serem executados.

A instrução `switch` avalia uma expressão e a compara com os valores de cada caso. Se houver correspondência, o bloco de código associado é executado. Se não houver correspondência, o bloco de código padrão é executado.

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

No exemplo acima, o valor da variável `day` é comparado com os valores de cada caso. Se houver correspondência, o bloco de código associado é executado. Se não houver correspondência, o bloco de código padrão é executado.

# --questions--

## --text--

Dado o trecho de código em JavaScript abaixo, que modifica a variável `activity` com base no dia da semana, qual será o valor da variável `activity` se o valor da variável `day` for `"Tuesday"`?

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

O valor da variável `activity` será `"Attend coding meetup"`.

---

O valor da variável `activity` será `"Watch a movie"`.

---

O valor da variável `activity` será `"Undefined day"`.

---

O valor da variável `activity` será `"Go to the gym"`.

## --video-solution--

1
