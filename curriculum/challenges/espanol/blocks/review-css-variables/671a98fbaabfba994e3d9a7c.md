---
id: 671a98fbaabfba994e3d9a7c
title: Revisión de Variables CSS
challengeType: 31
dashedName: review-css-variables
---

# --description--

## Propiedades Personalizadas CSS (Variables CSS)

- **Definición**: Las propiedades personalizadas de CSS, también conocidas como variables CSS, son entidades definidas por los autores de CSS que contienen valores específicos para ser reutilizados a lo largo de un documento. Son una característica poderosa que permite hojas de estilo más eficaces, mantenibles y flexibles. Las propiedades personalizadas son particularmente útiles para crear diseños tematizables. Puede definir un conjunto de propiedades para diferentes temas:

```css
:root {
  --bg-color: white;
  --text-color: black;
}

.dark-theme {
  --bg-color: #333;
  --text-color: white;
}

body {
  background-color: var(--bg-color);
  color: var(--text-color);
}
```

## La regla `@property`

- **Definición**: La regla `@property` es una característica poderosa de CSS que permite a los desarrolladores definir propiedades personalizadas con mayor control sobre su comportamiento, incluyendo cómo se animan y sus valores iniciales.

```css
@property --property-name {
  syntax: '<type>';
  inherits: true | false;
  initial-value: <value>;
}
```

- **`--property-name`**: Este es el nombre de la propiedad personalizada que estás definiendo. Como todas las propiedades personalizadas, debe comenzar con dos guiones. `--property-name` puede ser cosas como `<color>`, `<length>`, `<number>`, `<percentage>`, o tipos más complejos.
- **`syntax`**: Esto define el tipo de la propiedad.
- **`inherits`**: Esto especifica si la propiedad debe heredar su valor del elemento padre.
- **`initial-value`**: Esto establece el valor por defecto de la propiedad.
- **Ejemplo de Gradiente Usando la Regla `@property`**: Este ejemplo crea un gradiente que se anima suavemente cuando el elemento es desplazado.

```html
<div class="gradient-box"></div>
```

```css
@property --gradient-angle {
  syntax: "<angle>";
  inherits: false;
  initial-value: 0deg;
}

.gradient-box {
  width: 100px;
  height: 100px;
  background: linear-gradient(var(--gradient-angle), red, blue);
  transition: --gradient-angle 0.5s;
}

.gradient-box:hover {
  --gradient-angle: 90deg;
}
```

- **Respaldo**: Al usar la propiedad personalizada, puedes proporcionar un valor de respaldo usando la función `var()`, tal como lo harías con las propiedades personalizadas estándar.

```css
.button {
  background-color: var(--main-color, #3498db);
}
```

# --assignment--

Revisa los temas y conceptos de las Variables CSS.
