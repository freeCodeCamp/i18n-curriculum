---
id: 9d7123c8c441eeafaeb5bdef
title: Remueve elementos de un arreglo usando slice en lugar de splice
challengeType: 1
forumTopicId: 301236
dashedName: remove-elements-from-an-array-using-slice-instead-of-splice
---

# --description--

Un patrón común al trabajar con arreglos es cuando deseas eliminar elementos y conservar el resto del arreglo. JavaScript ofrece el método `splice` para esto, que toma argumentos para el índice de dónde comenzar a eliminar elementos, luego la cantidad de elementos para eliminar. Si no se proporciona el segundo argumento, el valor predeterminado es eliminar elementos hasta el final. Sin embargo, el método `splice` muta el arreglo original en el que se llama. Aquí tienes un ejemplo:

```js
const cities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
cities.splice(3, 1);
```

Aquí `splice` devuelve la cadena `London` y la elimina del arreglo cities. `cities` tendrá el valor `["Chicago", "Delhi", "Islamabad", "Berlin"]`.

Como vimos en el último desafío, el método `slice` no muta la matriz original, sino que devuelve una nueva que se puede guardar en una variable. Recuerde que el método `slice` toma dos argumentos para que los índices comiencen y terminen el segmento (el final no es inclusivo) y devuelve esos elementos en un nuevo arreglo. El uso del método `slice` en lugar de `splice` ayuda a evitar efectos secundarios de mutación del arreglo.

# --instructions--

Reescriba la función `nonMutatingSplice` usando `slice` en lugar de `splice`. Debería limitar el arreglo proporcionado `cities` a una longitud de 3 y devolver un nuevo arreglo con solo los primeros tres elementos.

No modifique el arreglo original proporcionado a la función.

# --hints--

Tu código debe usar el método `slice`.

```js
assert(__helpers.removeJSComments(code).match(/\.slice/g));
```

Su código no debería utilizar el método `splice`.

```js
assert(!__helpers.removeJSComments(code).match(/\.?[\s\S]*?splice/g));
```

No debes mutar el array original pasado a la función.

```js
assert.deepEqual(_inputCities, ["Chicago", "Delhi", "Islamabad", "London", "Berlin"]);
```

`nonMutatingSplice(["Chicago", "Delhi", "Islamabad", "London", "Berlin"])` debe devolver `["Chicago", "Delhi", "Islamabad"]`.

```js
assert.deepEqual(nonMutatingSplice(_inputCities), ["Chicago", "Delhi", "Islamabad"]);
```

# --seed--

## --seed-contents--

```js
function nonMutatingSplice(cities) {

  return cities.splice(3);
}
```

## --after-user-code--

```js
const _inputCities = ["Chicago", "Delhi", "Islamabad", "London", "Berlin"];
```

# --solutions--

```js
function nonMutatingSplice(cities) {
  return cities.slice(0,3);
}
```
