---
id: 648acb0745e79f79650fa2ac
title: La Cascada de lección CSS H
challengeType: 15
dashedName: the-cascade-of-css-lesson-h
---

# --description--

El factor final, el final de la línea, el desempate del desempate. Digamos que después de considerar todos los demás factores, todavía hay múltiples reglas en conflicto dirigidas a un elemento. ¿Cómo determina la cascada qué regla aplicar?

Realmente simple, en realidad. Cualquiera que sea la regla que se definió al final es la ganadora.

```css
/* styles.css */

.alert {
  color: red;
}

.warning {
  color: yellow;
}
```

Para un elemento que tiene tanto la clase `alert` como la clase `warning`, la cascada pasaría por todos los demás factores, incluyendo la herencia (ninguna aquí) y especificidad (ninguna regla es más específica que la otra). Dado que la regla `.warning` fue la última definida, y ningún otro factor pudo determinar qué regla aplicar, es la que se aplica al elemento.

# --preguntas----preguntas--
## --text--

¿Qué determina qué regla CSS se aplica cuando hay reglas en conflicto dirigidas al mismo elemento?

## --answers--

La especificidad de la regla CSS.

---

La jerarquía de herencia del elemento.

---

La presencia de clases o identificadores en el elemento.

---

El orden en el que se definieron las reglas.

## --video-solution--

4
