---
id: 67d2f4ddb4a4306fdf5bbaee
title: ¿Qué es la memoización y cómo funciona el hook useMemo?
challengeType: 19
dashedName: what-is-memoization-and-how-does-the-usememo-hook-work
---

# --description--

A medida que tu aplicación React se hace más grande, los renders innecesarios y los cálculos costosos pueden ralentizar el rendimiento, lo que lleva a actualizaciones de interfaz lenta y un mayor uso de recursos.

Esto puede ser especialmente problemático en aplicaciones con gestión de estado complejo, listas grandes, funciones que requieren cálculos intensivos y muchos componentes con un solo padre.

Esto genera la necesidad de optimizar tu aplicación React para un mejor rendimiento, minimizando cálculos redundantes y asegurando interacciones más fluidas.

React soluciona este problema con un proceso llamado memoización, una técnica que almacena en caché valores y funciones para evitar recalculaciones innecesarias, de modo que tu aplicación pueda ser más rápida y más receptiva.

Por definición, la memoización es una técnica de optimización en la cual el resultado de llamadas a funciones costosas se almacena (recuerda) en base a argumentos específicos. Cuando se proporcionan los mismos argumentos nuevamente, se devuelve el resultado en caché en lugar de volver a calcular la función.

El proceso de memoización sucede de la siguiente manera:

- Almacenar los resultados de las llamadas a funciones junto con sus argumentos de entrada.

- Antes de ejecutar la función, comprueba si el resultado para los argumentos actuales ya existe en la caché.

- Si existe, devuelve el resultado en caché en lugar de ejecutar el cálculo de nuevo.

- Si no existe, calcula el resultado, guárdalo en la caché, y luego devuélvelo.

Para mejorar la experiencia del desarrollador con la memoización, React proporciona tres herramientas: `React.memo` (o `memo`), `useMemo` y `useCallback`. 

Como puedes suponer, tanto `useMemo` como `useCallback` son hooks, pero `React.memo` es un envoltorio de componente, un componente de orden superior (HOC).

En la próxima lección, veremos cómo funcionan el hook `useCallback` y `React.memo`.

`useMemo` te permite memorizar valores calculados, mientras que `useCallback` hace lo mismo para referencias de funciones.

Si te preguntas qué son valores calculados y referencias de funciones, los valores calculados se refieren al resultado de ejecutar una función, mientras que las referencias de funciones son los punteros a funciones: el objeto de la función en memoria.

Veamos primero cómo usar el hook `useMemo`. Aquí está la sintaxis básica del hook `useMemo`:

```js
const memoizedValue = useMemo(
  function () {
    return computeExpensiveValue(a, b);
  },
  [a, b]
);
```

Puedes ver que todo lo que se necesita es envolver el hook `useMemo` alrededor de la función.

Este componente `ExpensiveSquare` recibirá una prop `num` que utilizará para calcular el cuadrado:

```jsx
function ExpensiveSquare({ num }) {
  function calculateSquare(n) {
    console.log("Calculating square...");
    return n * n;
  }

  const squared = calculateSquare(num);
  return (
    <p>
      Square of {num}: {squared}
    </p>
  );
}
export default ExpensiveSquare;
```

Aquí está el componente `App` donde se está usando el `ExpensiveSquare`:

```jsx
import { useState, useEffect } from "react";
import ExpensiveSquare from "./components/ExpensiveSquare";

function App() {
 const [timer, setTimer] = useState(0);
 const [num, setNum] = useState(0);

 useEffect(() => {
   const interval = setInterval(() => setTimer((c) => c + 1), 1000);
   return () => clearInterval(interval);
 }, []);

 return (
   <div>
     <h1>Timer: {timer} seconds gone</h1>
     <ExpensiveSquare num={num} />
     <button onClick={() => setNum((n) => n + 1)}>Increase Number</button>
   </div>
 );
}

export default App;
```

El `timer` en el `useEffect`, que se ejecuta cada segundo, hará que la función `calculateSquare` se ejecute cada vez que se ejecute, incluso cuando no aumentes la variable de estado `num`.

Para resolver este problema, podemos usar el hook `useMemo` envolviendo la llamada a la función en él y especificando la variable `num` como la dependencia:

```jsx
// import the useMemo hook
import { useMemo } from "react";

function ExpensiveSquare({ num }) {
  function calculateSquare(n) {
    console.log("Calculating square...");
    return n * n;
  }

  // const squared = calculateSquare(num);
  // Wrap the function call in useMemo instead
  const squared = useMemo(() => calculateSquare(num), [num]);

  return (
    <p>
      Square of {num}: {squared}
    </p>
  );
}

export default ExpensiveSquare;
```

Esto asegurará que la función se memorice almacenando en caché el resultado, de modo que el cálculo ocurra solo cuando cambie la variable `num`, y no cuando cambie algo en el componente en el que se está utilizando.

La llamada a la función `calculateSquare` ya no se ejecuta cada vez que cambia `timer`, sino en el renderizado inicial y cuando cambia `num`.

# --questions--

## --text--

¿Qué es la memoización en React?

## --answers--

Una técnica que almacena en caché valores y funciones para evitar recalculaciones innecesarias.

---

Una técnica que te permite gestionar las actualizaciones del estado del componente para evitar recalculaciones innecesarias.

### --feedback--

Ayuda a optimizar el rendimiento almacenando resultados previamente calculados.

---

Un proceso de reconciliación del DOM Virtual con el DOM real.

### --feedback--

Ayuda a optimizar el rendimiento almacenando resultados previamente calculados.

---

Una forma de manejar efectos secundarios en componentes funcionales.

### --feedback--

Ayuda a optimizar el rendimiento almacenando resultados previamente calculados.

## --video-solution--

1

## --text--

¿Cuál es la diferencia entre valores calculados y referencias de funciones?

## --answers--

Los valores calculados son objetos de función, mientras que las referencias de función son resultados de ejecución.

### --feedback--

Uno es la salida de una función, mientras que el otro es solo un puntero a ella.

---

Los valores calculados son el resultado de ejecutar una función, mientras que las referencias de función son los objetos de función en memoria.

---

Los valores calculados y las referencias de función son la misma cosa.

### --feedback--

Uno es la salida de una función, mientras que el otro es solo un puntero a ella.

---

Las referencias de funciones almacenan valores calculados.

### --feedback--

Uno es la salida de una función, mientras que el otro es solo un puntero a ella.

## --video-solution--

2

## --text--

¿Cuál de estos NO es una de las herramientas que React proporciona para memoización?

## --answers--

`React.memo`

### --feedback--

Las herramientas de memoización se centran en almacenar en caché valores y funciones, mientras que esta opción maneja efectos secundarios.

---

`useMemo`

### --feedback--

Las herramientas de memoización se centran en almacenar en caché valores y funciones, mientras que esta opción maneja efectos secundarios.

---

`useCallback`

### --feedback--

Las herramientas de memoización se centran en almacenar en caché valores y funciones, mientras que esta opción maneja efectos secundarios.

---

`useEffect`

## --video-solution--

4
