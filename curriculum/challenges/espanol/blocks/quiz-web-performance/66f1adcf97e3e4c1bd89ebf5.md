---
id: 66f1adcf97e3e4c1bd89ebf5
title: Examen de Rendimiento Web
challengeType: 8
dashedName: quiz-web-performance
---

# --description--

Para aprobar el cuestionario, debe responder correctamente al menos 18 de las 20 preguntas a continuación.

# --quizzes--

## --quiz--

### --question--

#### --text--

¿Cuál es la diferencia clave entre el rendimiento real y el rendimiento percibido en el desarrollo web?

#### --distractors--

El rendimiento real se centra en el número de solicitudes HTTP realizadas por el navegador, mientras que el rendimiento percibido se basa en la velocidad de renderizado de CSS.

---

El rendimiento real se refiere solo a los tiempos de carga, mientras que el rendimiento percibido se relaciona con elementos visuales como animaciones e indicadores de carga.

---

El rendimiento real solo incluye los tiempos de procesamiento del lado del servidor, mientras que el rendimiento percibido es completamente del lado del cliente.

#### --answer--

El rendimiento real es la rapidez con la que se carga el contenido, mientras que el rendimiento percibido es qué tan rápido creen los usuarios que carga la página.

### --question--

#### --text--

¿Qué métrica indica mejor la rapidez con la que aparece el contenido en una página web?

#### --distractors--

Tiempo hasta interactivo (TTI)

---

Tiempo de carga de la página (PLT)

---

Última pintura con contenido (LCP)

#### --answer--

Primera pintura con contenido (FCP)

### --question--

#### --text--

¿Cuál de las siguientes NO es una forma de reducir los tiempos de carga de la página?

#### --distractors--

Optimización de activos multimedia.

---

Utilizar el almacenamiento en caché del navegador.

---

Minificar y comprimir archivos.

#### --answer--

Usar solo archivos JPEG.

### --question--

#### --text--

¿Qué es "tiempo hasta usable"?

#### --distractors--

Es el intervalo desde que un usuario solicita una página hasta que puede interactuar con formularios en la página.

---

Es el tiempo que tarda en estar disponibles y utilizables todas las imágenes y animaciones. 

---

Este es el tiempo que tarda en cargarse en la pantalla todas las animaciones CSS y JavaScript.

#### --answer--

Es el intervalo desde que un usuario solicita una página hasta que puede interactuar con ella de manera significativa.

### --question--

#### --text--

¿Qué mide el Primer Renderizado con Contenido (FCP)?

#### --distractors--

El tiempo total de carga para todos los archivos JavaScript en la página.

---

La demora antes de que un usuario pueda interactuar con cualquier elemento en la página.

---

El tiempo que tarda en cargar y aplicar completamente todas las hojas de estilo.

#### --answer--

El tiempo que tarda en renderizarse el primer fragmento de texto o imagen.

### --question--

#### --text--

¿Cuál de las siguientes NO es una herramienta de medición de rendimiento comúnmente usada?

#### --distractors--

Chrome DevTools

---

Lighthouse

---

WebPageTest

#### --answer--

WebMeasure

### --question--

#### --text--

¿Para qué se utilizan las APIs de Web Performance?

#### --distractors--

Se utiliza para medir el rendimiento solo de las animaciones CSS.

---

Se utiliza para acelerar automáticamente el rendimiento de una página web.

---

Proporciona una tabla detallada de métricas de rendimiento para el usuario.

#### --answer--

Permite a los desarrolladores rastrear cómo se carga y responde una página web de manera eficiente directamente desde el código.

### --question--

#### --text--

¿Qué estrategia puede mejorar efectivamente el rendimiento percibido?

#### --distractors--

Usar imágenes grandes para mejorar la calidad visual general.

---

Cargar los estilos CSS al final para priorizar el renderizado del contenido.

---

Pre-cargar todos los scripts para asegurarse de que estén listos cuando se necesiten.

#### --answer--

Mostrar un esqueleto de carga mientras se obtiene el contenido.

### --question--

#### --text--

¿Cuál de las siguientes se refiere al tiempo que tarda una solicitud en viajar entre el navegador y el servidor?

#### --distractors--

renderizado

---

INP

---

CDN

#### --answer--

latencia

### --question--

#### --text--

¿Cómo impacta la optimización de CSS en el rendimiento de la página?

#### --distractors--

Evita que el navegador ejecute JavaScript innecesario.

---

Reduce el tamaño total del archivo de imágenes.

---

Elimina la necesidad de cargar imágenes de forma diferida.

#### --answer--

Acelera el análisis del HTML.

### --question--

#### --text--

¿Cuál de las siguientes muestra cuánto tiempo está bloqueado el hilo principal por tareas pesadas de JavaScript?

#### --distractors--

Orden de origen

---

Tasa de rebote

---

WebPageTest

#### --answer--

Tiempo total de bloqueo

### --question--

#### --text--

Cuando se mide Interacción a la siguiente pintura (INP), ¿qué se evalúa?

#### --distractors--

El tiempo que tarda la página en cargar completamente todos los estilos e imágenes después de una interacción del usuario.

---

La demora entre la interacción de un usuario y la capacidad del navegador para registrar la siguiente entrada de usuario.

---

El intervalo entre la ejecución de JavaScript y la actualización del contenido de la página por parte del navegador.

#### --answer--

El tiempo entre la interacción de un usuario y la respuesta del navegador al renderizar el siguiente cuadro.

### --question--

#### --text--

¿Cuál de las siguientes APIs te da marcas de tiempo de alta precisión (en milisegundos) para medir cuánto tiempo tarda en cargar diferentes partes de tu sitio?

#### --distractors--

`performance.delay()`

---

`performance.previous()`

---

`performance.next()`

#### --answer--

`performance.now()`

### --question--

#### --text--

¿Cuál de las siguientes APIs te da un desglose de cada etapa de carga de la página desde la búsqueda de DNS hasta `DOMContentLoaded`?

#### --distractors--

API de Temporización de Permiso

---

API de Texto de Rendimiento

---

API de Temporización de Ejecución

#### --answer--

API de Temporización de Rendimiento

### --question--

#### --text--

¿Cuál de las siguientes escucha eventos de rendimiento como cambios de diseño, tareas largas e interacciones de usuario?

#### --distractors--

```js
const observer = new PermitObserve((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

---

```js
const observer = new PerformObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

---

```js
const observer = new PermitObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

#### --answer--

```js
const observer = new PerformanceObserver((list) => {  
  list.getEntries().forEach((entry) => {  
    console.log(`Long task detected: ${entry.duration}ms`);  
  });  
});  

observer.observe({ type: "longtask", buffered: true });
```

### --question--

#### --text--

¿Cómo mejora el rendimiento de la página la carga diferida de imágenes?

#### --distractors--

Asegura que todas las imágenes se carguen inmediatamente para una mejor experiencia de usuario.

---

Reduce el tamaño de los archivos de imágenes para acelerar la carga.

---

Pre-carga imágenes para evitar cualquier retraso en la carga.

#### --answer--

Retrasa la carga de imágenes no esenciales hasta que estén en vista.

### --question--

#### --text--

¿Qué es la división de código?

#### --distractors--

Involucra dividir tu código React en módulos que realizan solo tareas críticas

---

Involucra dividir tu código HTML en módulos que realizan solo tareas no críticas.

---

Involucra dividir tu código CSS en módulos que realizan tareas críticas y no críticas.

#### --answer--

Involucra dividir tu código JavaScript en módulos que realizan tareas críticas y no críticas.

### --question--

#### --text--

¿Cuál de las siguientes es la forma correcta de cargar diferidamente una imagen?

#### --distractors--

```html
<img src="placeholder.jpg" lazy="loading">
```

---

```html
<img src="placeholder.jpg" load="lazy">
```

---

```html
<img src="placeholder.jpg" lazy="load">
```

#### --answer--

```html
<img src="placeholder.jpg" loading="lazy">
```

### --question--

#### --text--

¿Cuál de las siguientes NO es una forma de mejorar INP?

#### --distractors--

Reducir el trabajo del hilo principal dividiendo tareas largas de JavaScript.

---

Optimizar manejadores de eventos.

---

Diferir o cargar pesadamente con retardo activos.

#### --answer--

Utilizar solo imágenes PNG y JPEG.

### --question--

#### --text--

¿Por qué es la eficiencia energética un aspecto crucial del rendimiento web?

#### --distractors--

Mejora el atractivo visual general de la página web.

---

Minimiza la cantidad de JavaScript utilizado en una página web.

---

Disminuye la cantidad de archivos CSS necesarios y hace que tu CSS sea más rápido.

#### --answer--

Reduce la carga en el hardware, conservando energía y mejorando la sostenibilidad.

