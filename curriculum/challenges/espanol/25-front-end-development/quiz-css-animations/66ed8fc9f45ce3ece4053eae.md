---
id: 66ed8fc9f45ce3ece4053eae
title: Cuestionario de Animaciones CSS
challengeType: 8
dashedName: quiz-css-animations
---

# --description--

Para pasar el cuestionario, debes responder correctamente al menos 18 de las 20 preguntas a continuación.

# --quizzes--

## --quiz--

### --question--

#### --text--

¿Cuál es el propósito de la propiedad `transform` en CSS?

#### --distractors--

Para cambiar la visibilidad de un elemento.

---

Para aplicar un efecto visual al texto.

---

Para establecer las dimensiones de un elemento.

#### --answer--

Para modificar la posición, tamaño y forma de un elemento.

### --question--

#### --text--

¿Cómo afecta la propiedad `animation-direction` en CSS a una animación?

#### --distractors--

Especifica si una animación debe repetirse.

---

Establece la duración de la animación.

---

Define la velocidad de la animación.

#### --answer--

Define cómo debe reproducirse una animación.

### --question--

#### --text--

¿Qué propiedad de CSS hace que una animación se ejecute 3 veces?

#### --distractors--

`animation-repeat: 3`

---

`animation-loop: 3`

---

`animation-delay: 3`

#### --answer--

`animation-iteration-count: 3`

### --question--

#### --text--

¿Qué función de tiempo de CSS hace que una animación se ejecute a una velocidad constante de principio a fin?

#### --distractors--

`ease`

---

`ease-in`

---

`ease-in-out`

#### --answer--

`linear`

### --question--

#### --text--

¿Qué define la regla `@keyframes` en CSS?

#### --distractors--

Los colores de un degradado CSS.

---

Los ángulos de una rotación CSS.

---

Las dimensiones de un elemento.

#### --answer--

Las etapas de una animación CSS.

### --question--

#### --text--

¿Cuál es el propósito de la función `translateX()` en CSS?

#### --distractors--

Cambia la opacidad del elemento.

---

Rota el elemento.

---

Reposiciona el elemento verticalmente.

#### --answer--

Reposiciona el elemento horizontalmente.

### --question--

#### --text--

¿Cuál de los siguientes NO es un posible problema con las animaciones CSS?

#### --distractors--

Pueden causar malestar o daño físico a ciertos usuarios.

---

Los usuarios pueden encontrarlas distractoras.

---

El uso excesivo puede llevar a un rendimiento deficiente.

#### --answer--

Pueden mejorar la experiencia del usuario.

### --question--

#### --text--

¿Dónde se define la regla `@keyframes`?

#### --distractors--

Dentro del elemento `body` de un archivo HTML.

---

Dentro del elemento `head` de un archivo HTML.

---

Dentro de una definición de clase CSS.

#### --answer--

En el nivel superior, fuera de cualquier selectores CSS.

### --question--

#### --text--

¿Qué propiedad de CSS te permite pausar y reanudar una animación?

#### --distractors--

`animation-timing-function`

---

`animation-delay`

---

`animation-direction`

#### --answer--

`animation-play-state`

### --question--

#### --text--

¿Qué valor debe asignarse a la propiedad `animation-name` en CSS?

#### --distractors--

La duración de la animación en segundos.

---

La función temporal utilizada para la animación.

---

El retraso antes de que comience la animación en segundos.

#### --answer--

El nombre de la animación definida por el `@keyframes`.

### --question--

#### --text--

¿Qué hace esta regla `@keyframe` al elemento animado?

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

Rota el elemento 90 grados en el sentido de las agujas del reloj.

---

Cambia el color del elemento a azul.

---

Escala el elemento al 50% de su tamaño inicial y luego al 100% de su tamaño inicial.

#### --answer--

Mueve el elemento horizontalmente de -50px a 100px, relativo a su punto de partida.

### --question--

#### --text--

¿Qué propiedad de CSS define cómo progresa una animación a lo largo del tiempo?

#### --distractors--

`animation-delay`

---

`animation-fill-mode`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

¿Qué propiedad de CSS se utiliza para especificar que una animación debe tardar 5 segundos en completarse?

#### --distractors--

```css
animation-name: 5s;
```

---

```css
animation-delay: 5s;
```

---

```css
animation-timing-function: 5s;
```

#### --answer--

```css
animation-duration: 5s;
```

### --question--

#### --text--

¿Qué representa el `50%` en la siguiente regla `@keyframe` CSS?

```css
@keyframes animation {
  0% {
    transform: translateX(-50px);
  }
  50% {
    transform: translateX(25px);
  }
  100% {
    transform: translateX(100px);
  }
}
```

#### --distractors--

El punto de inicio de la animación.

---

El punto final de la animación.

---

La velocidad de la animación.

#### --answer--

El punto intermedio de la animación.

### --question--

#### --text--

¿Qué ocurrirá cuando se aplique la propiedad `transform: translateX(200px);`?

#### --distractors--

El elemento se moverá 200px a la izquierda.

---

El elemento se moverá 200px hacia abajo.

---

El elemento girará 200 grados en sentido de las agujas del reloj.

#### --answer--

El elemento se moverá 200px a la derecha.

### --question--

#### --text--

¿Cómo se comportará la animación si se establece `animation-iteration-count` en `infinite`?

#### --distractors--

Se ejecutará una vez y se detendrá.

---

Se pausará después de la primera iteración.

---

Se detendrá después de tres iteraciones.

#### --answer--

Se repetirá indefinidamente.

### --question--

#### --text--

¿Qué selector `@keyframes` especifica el punto de inicio de una animación?

#### --distractors--

`50%`

---

`25%`

---

`100%`

#### --answer--

`0%`

### --question--

#### --text--

¿Qué propiedades pueden especificarse usando la propiedad abreviada `animation` en CSS?

#### --distractors--

Solo el nombre de la animación.

---

El nombre y la duración de la animación.

---

El nombre, duración y retraso de la animación.

#### --answer--

Todas las propiedades de animación.

### --question--

#### --text--

¿Qué propiedad de CSS se utiliza para aplicar una animación definida por una regla `@keyframes`?

#### --distractors--

`animation-duration`

---

`apply`

---

`translate`

#### --answer--

`animation`

### --question--

#### --text--

¿Qué propiedad permite establecer un tiempo antes de que comience la animación?

#### --distractors--

`animation-fill-mode`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-delay`

## --quiz--

### --question--

#### --text--

¿Qué hace la propiedad `animation-delay` en CSS?

#### --distractors--

Establece cuánto dura la animación.

---

Especifica la función temporal.

---

Define la dirección de la animación.

#### --answer--

Retrasa el inicio de la animación.

### --question--

#### --text--

¿Qué propiedad de animación especifica cómo debe estar estilizado el elemento antes y después de la animación?

#### --distractors--

`animation-delay`

---

`animation-direction`

---

`animation-iteration-count`

#### --answer--

`animation-fill-mode`

### --question--

#### --text--

¿Por qué deben utilizarse las animaciones CSS con moderación?

#### --distractors--

Demasiadas animaciones CSS pueden provocar roturas de estilo y estilos inconsistentes en diferentes navegadores.

---

Demasiadas animaciones CSS pueden llevar a posiciones bajas o inexistentes en los resultados de motores de búsqueda.

---

Demasiadas animaciones CSS provocarán automáticamente una falla del servidor e incrementarán la probabilidad de riesgos de seguridad.

#### --answer--

Demasiadas animaciones CSS pueden llevar a un rendimiento deficiente y pueden distraer o ser problemáticas para usuarios con necesidades de accesibilidad.

### --question--

#### --text--

¿Qué propiedad de animación determina si debe reproducirse hacia adelante, hacia atrás o alternar?

#### --distractors--

`animation-fill-mode`

---

`animation-delay`

---

`animation-timing-function`

#### --answer--

`animation-direction`

### --question--

#### --text--

¿Qué consulta CSS detecta si el usuario ha solicitado animaciones mínimas o efectos de movimiento?

#### --distractors--

`reduce-motion`

---

`min-motion-preference`

---

`motion-preferences`

#### --answer--

`prefers-reduced-motion`

### --question--

#### --text--

¿Qué propiedad establece cuántas veces se repite una `animación`?

#### --distractors--

`animation-duration`

---

`animation-count`

---

`animation-delay`

#### --answer--

`animation-iteration-count`

### --question--

#### --text--

¿Qué regla CSS se utiliza para definir las etapas y estilos de una animación en varios puntos durante su duración?

#### --distractors--

`@style`

---

`@transition`

---

`@transform`

#### --answer--

`@keyframes`

### --question--

#### --text--

Dentro de la consulta de medios `reduced-motion`, ¿cuál declaración deshabilita las transiciones?

#### --distractors--

`animation: none;`

---

`transition: remove;`

---

`animation-play-state: paused;`

#### --answer--

`transition: none;`

### --question--

#### --text--

¿Qué permite hacer la propiedad `animation-play-state`?

#### --distractors--

Establecer cuántas veces se repite la animación.

---

Especificar cuánto tiempo tarda la animación en completarse.

---

Determinar la dirección en la que se reproduce la animación.

#### --answer--

Pausar y reanudar la animación.

### --question--

#### --text--

¿Cuál de las siguientes es una buena práctica al trabajar con animaciones?

#### --distractors--

Usa tantos colores parpadeantes y movimientos rápidos como sea posible para captar la atención.

---

Evita probar animaciones en diferentes dispositivos o tamaños de pantalla.

---

Haz que las animaciones duren tanto como sea posible para asegurarte de que los usuarios las noten.

#### --answer--

Evita contenido que parpadee más de tres veces por segundo para prevenir desencadenar convulsiones o causar malestar.

### --question--

#### --text--

¿Por qué se utiliza la declaración `!important` en las reglas CSS?

#### --distractors--

Para evitar que otras consultas de medios se carguen.

---

Para limitar estilos al primer elemento hijo.

---

Para depurar CSS más fácilmente.

#### --answer--

Para asegurar que estas reglas tengan prioridad sobre otros estilos.

### --question--

#### --text--

¿Qué asegura `animation-iteration-count: 1 !important;` en CSS?

#### --distractors--

Que las animaciones estén pausadas.

---

Que las animaciones se ejecuten indefinidamente.

---

Que las animaciones cambien de dirección en cada ciclo.

#### --answer--

Que cualquier animación en bucle se reproduzca solo una vez.

### --question--

#### --text--

¿Qué propiedad de CSS se utiliza para especificar cuánto debe tardar una animación en completarse?

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-iteration-count`

#### --answer--

`animation-duration`

### --question--

#### --text--

¿Qué propiedad NO forma parte del abreviado `animation`?

#### --distractors--

`animation-delay`

---

`animation-timing-function`

---

`animation-direction`

#### --answer--

`animation-transform`

### --question--

#### --text--

¿Qué define la regla `@keyframes`?

#### --distractors--

La función de tiempo de una animación.

---

El estado predeterminado de un elemento.

---

Las consultas de medios para animaciones.

#### --answer--

La secuencia de estilos en diferentes puntos durante una animación.

### --question--

#### --text--

¿Qué hace esta regla `@keyframe` al elemento animado?

```css
@keyframes fade-in {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}
```

#### --distractors--

Escala el elemento del 0% al 100%.

---

Mueve el elemento de izquierda a derecha.

---

Cambia el color del texto a negro.

#### --answer--

Hace que el elemento se desvanezca aumentando gradualmente su transparencia.

### --question--

#### --text--

En una regla de frames, ¿qué representa `100%`?

#### --distractors--

El inicio de la animación.

---

El punto intermedio.

---

La función de aliviación.

#### --answer--

El fin de la animación.

### --question--

#### --text--

¿Qué propiedad controla el ritmo de una `animación` a lo largo de su duración?

#### --distractors--

`animation-duration`

---

`animation-delay`

---

`animation-iteration-count`

#### --answer--

`animation-timing-function`

### --question--

#### --text--

¿Qué deben considerar los desarrolladores al implementar animaciones para mantener la accesibilidad?

#### --distractors--

Apoyarse completamente en JavaScript para todas las animaciones.

---

Agregar animaciones frecuentes e intensas para impacto.

---

Incluir solo efectos audaces, rápidos y sorprendentes.

#### --answer--

Usar efectos sutiles e intencionales, respetar preferencias y ofrecer control al usuario.

### --question--

#### --text--

¿Cuál de las siguientes es la sintaxis correcta para deslizar un elemento desde la izquierda?

#### --distractors--

```css
@keyframes slide-in {
  0 { 
    transform: translate(-100%); 
  }
  100 { 
    transform: translate(0); 
  }
}
```

---

```css
@keyframes slide-in {
  from { 
    translateX(-100%); 
  }
  to { 
    translateX(0); 
  }
}
```

---

```css
@keyframes slide-in {
  start { 
    transform: moveX(-100%); 
  }
  end { 
    transform: moveX(0); 
  }
}
```

#### --answer--

```css
@keyframes slide-in {
  0% { 
    transform: translateX(-100%); 
  }
  100% { 
    transform: translateX(0); 
  }
}
```
