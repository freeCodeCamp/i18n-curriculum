---
id: 671a999cc77b7f9bceb4caeb
title: Revisión de Animaciones CSS
challengeType: 31
dashedName: review-css-animations
---

# --interactive--

## Conceptos básicos de Animación CSS

- **Definición**: Las animaciones CSS te permiten crear efectos dinámicos y visualmente atractivos en páginas web sin necesidad de JavaScript o programación compleja. Proveen una forma de realizar transiciones suaves de elementos entre diferentes estilos durante un tiempo específico.
- **La Regla `@keyframes`**: Esta regla define las etapas y estilos de la animación. Especifica qué estilos debe tener el elemento en varios puntos durante la animación.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<div class="box">Slide</div>
```

```css
.box {
  width: 120px;
  padding: 10px;
  background: #0077ff;
  color: white;
  animation: slide-in 1s ease-in-out;
}

@keyframes slide-in {
  from {
    transform: translateX(-100%);
  }
  to {
    transform: translateX(0);
  }
}
```

:::

- **`Propiedad de Animación`**: Esta es la propiedad abreviada utilizada para aplicar animaciones.
- **`Nombre de Animación`**: Esto especifica el nombre de la regla `@keyframes` que se va a usar.
- **`Duración de Animación`**: Esto establece cuánto tiempo debe durar la animación.
- **`Función de Tiempo de Animación`**: Esto define cómo avanza la animación a lo largo del tiempo (como ease, linear, ease-in-out).
- **`Retraso de Animación`**: Esto especifica un retraso antes de que comience la animación.
- **`Conteo de Iteración de Animación`**: Esto establece cuántas veces debe repetirse la animación.
- **`Dirección de Animación`**: Esto determina si la animación debería reproducirse hacia adelante, hacia atrás o alternar.
- **`Modo de Relleno de Animación`**: Esto especifica cómo debe estar estilizado el elemento antes y después de la animación.
- **`Estado de Reproducción de Animación`**: Esto te permite pausar y reanudar la animación.

## Accesibilidad y la Consulta de Medios `prefers-reduced-motion`

- **La Consulta de Medios `prefers-reduced-motion`**: Una de las preocupaciones principales de accesibilidad con las animaciones es que pueden causar incomodidad o incluso daño físico a algunos usuarios. Las personas con trastornos vestibulares o sensibilidad al movimiento pueden experimentar mareos, náuseas o dolores de cabeza al ser expuestas a ciertos tipos de movimiento en la pantalla. La consulta de medios `prefers-reduced-motion` permite a los desarrolladores web detectar si el usuario ha solicitado animaciones mínimas o efectos de movimiento a nivel de sistema.

:::interactive_editor

```html
<link rel="stylesheet" href="styles.css">
<button class="animated-element">Hover me</button>
```

```css
.animated-element {
  padding: 10px 16px;
  transition: transform 0.3s ease-in-out;
}

.animated-element:hover {
  transform: translateX(20px);
}

@media (prefers-reduced-motion: reduce) {
  .animated-element {
    transition: none;
  }
}
```

:::

# --assignment--

Revisa los temas y conceptos de Animaciones CSS.
