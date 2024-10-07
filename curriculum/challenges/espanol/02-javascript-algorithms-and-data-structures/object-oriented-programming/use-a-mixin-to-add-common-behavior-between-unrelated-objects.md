---
id: 587d7db2367417b2b2512b89
title: Utiliza un "mixin" para añadir un comportamiento común entre objetos no relacionados
challengeType: 1
forumTopicId: 301331
dashedName: use-a-mixin-to-add-common-behavior-between-unrelated-objects
---

# --description--

As you have seen, behavior is shared through inheritance. However, there are cases when inheritance is not the best solution. Inheritance does not work well for unrelated objects like `Bird` and `Airplane`. They can both fly, but a `Bird` is not a type of `Airplane` and vice versa.

Para objetos no relacionados es mejor utilizar <dfn>mixins</dfn>. Un "mixin" permite a otros objetos utilizar una colección de funciones.

```js
let flyMixin = function(obj) {
  obj.fly = function() {
    console.log("Flying, wooosh!");
  }
};
```

El `flyMixin` toma a cualquier objeto y le da el método `fly`.

```js
let bird = {
  name: "Donald",
  numLegs: 2
};

let plane = {
  model: "777",
  numPassengers: 524
};

flyMixin(bird);
flyMixin(plane);
```

Aquí `bird` y `plane` son pasados a `flyMixin` el cual después asigna la función `fly` a cada objeto. Ahora `bird` y `plane` pueden volar:

```js
bird.fly();
plane.fly();
```

La consola mostraría la cadena `Flying, wooosh!` dos veces, una por cada llamada a `.fly()`.

Ten en cuenta cómo el mixin permite que el mismo método `fly` sea reutilizado por los objetos `bird` y `plane` los cuales no están relacionados.

# --instructions--

Crea un mixin llamado `glideMixin` que defina un método llamado `glide`. Luego utiliza el `glideMixin` para dar a `bird` y `boat` la habilidad de planear.

# --hints--

El código debe declarar una variable `glideMixin` que sea una función.

```js
assert(typeof glideMixin === 'function');
```

El código debe usar el `glideMixin` en el objeto `bird` para darle el método `glide` (planear).

```js
assert(typeof bird.glide === 'function');
```

El código debe usar el `glideMixin` en el objeto `boat` para darle el método `glide` (planear).

```js
assert(typeof boat.glide === 'function');
```

# --seed--

## --seed-contents--

```js
let bird = {
  name: "Donald",
  numLegs: 2
};

let boat = {
  name: "Warrior",
  type: "race-boat"
};

// Only change code below this line
```

# --solutions--

```js
let bird = {
  name: "Donald",
  numLegs: 2
};

let boat = {
  name: "Warrior",
  type: "race-boat"
};
function glideMixin (obj) {
  obj.glide = () => 'Gliding!';
}

glideMixin(bird);
glideMixin(boat);
```
