---
id: 6617aee95b87c334e7ae8015
title: Lição D de Aprenda funções básicas
challengeType: 15
dashedName: learn-function-basics-lesson-d
---

# --description--

Se uma função é chamada, mas um argumento não é fornecido, então o parâmetro receberá o valor `undefined`. Isso pode levar a resultados inesperados se a função não estiver projetada para lidar com esse caso.

```js
function favoriteAnimal(animal) {
  return animal + " is my favorite animal!"
}

console.log(favoriteAnimal()); // Output: undefined is my favorite animal!
```

No exemplo acima, a função `favoriteAnimal` é chamada sem um argumento. O parâmetro `animal` recebe o valor de `undefined`, que é então concatenado com a string `" is my favorite animal!"`.

Se um valor não for fornecido, você pode fazer uso de parâmetros padrão. Parâmetros padrão permitem que você atribua um valor padrão a um parâmetro se nenhum valor for fornecido quando a função é chamada.

```js
function favoriteAnimal(animal = 'Giant Panda') {
  return animal + " is my favorite animal!"
}
```

No exemplo acima, o valor padrão do parâmetro `animal` é definido como `'Giant Panda'`. Se a função `favoriteAnimal` for chamada sem um argumento, o parâmetro `animal` receberá o valor `'Giant Panda'`.

# --questions--

## --text--

Como os parâmetros padrão em funções JavaScript melhoram o comportamento de funções como `favoriteAnimal` quando chamadas sem argumentos?

## --answers--

Eles fazem com que a função lance um erro se nenhum argumento for fornecido.

---

Eles impedem que a função seja chamada sem o número necessário de argumentos.

---

Eles garantem que a função retorne `null` para indicar que nenhum argumento foi passado.

---

Eles permitem que a função seja executada com um valor predefinido, evitando problemas relacionados ao `undefined`.

## --video-solution--

4
