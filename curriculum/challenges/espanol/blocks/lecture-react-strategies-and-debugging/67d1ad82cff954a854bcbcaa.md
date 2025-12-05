---
id: 67d1ad82cff954a854bcbcaa
title: ¿Qué es Prop Drilling?
challengeType: 19
dashedName: what-is-prop-drilling
---

# --description--

Prop drilling es el enfoque más básico para la gestión de estado en aplicaciones de React. Parece simple, pero puede volverse desordenado rápidamente y es muy difícil de escalar.

Veamos qué es prop drilling, por qué es un problema y una buena alternativa a medida que una aplicación crece.

Prop drilling es el proceso de pasar props desde un componente padre a componentes hijos profundamente anidados, incluso cuando algunos de los componentes hijos no necesitan los props.

Por ejemplo, supongamos que tienes tres componentes llamados `Parent`, `Child` y `Grandchild`. Si quieres usar algunos datos en el componente `Grandchild`, pero están en el componente `Parent`, necesitarías pasarlos desde el `Parent` al componente `Child`, y luego del `Child` al componente `Grandchild`.

O si los datos están aún más arriba en la cadena, los datos podrían tener que ser pasados al componente `Parent` también.

Aquí, los datos que quiero mostrar son la cadena `Hello, Prop Drilling!`. Están asignados a la variable `greeting` en el componente raíz `App`:

```jsx
import "./App.css";
import Parent from "./Parent";

function App() {
  const greeting = "Hello, Prop Drilling!";

  return <Parent greeting={greeting} />;
}

export default App;
```

Puedes ver que el componente `Parent` también está recibiendo la variable `greeting` como el valor de un prop `greeting`. Aquí está el componente `Parent` pasándolo al componente `Child` como el valor de otro prop `greeting` en el `Child`:

```jsx
import Child from "./Child";

const Parent = ({ greeting }) => {
  return <Child greeting={greeting} />;
};

export default Parent;
```

Y aquí está el componente `Child` que lo pasa al componente `Grandchild`:

```jsx
import Grandchild from "./Grandchild";

const Child = ({ greeting }) => {
  return <Grandchild greeting={greeting} />;
};

export default Child;
```

Y finalmente, el componente `Grandchild` recibe el saludo y lo usa como el contenido de un elemento `h1`:

```jsx
const Grandchild = ({ greeting }) => {
  return <h1>{greeting}</h1>;
};

export default Grandchild;
```

En el navegador, verás una página con un solo elemento `h1` que tiene el texto `Hello, Prop Drilling!`.

Al principio, prop drilling podría no parecer un gran problema. Pero a medida que tu aplicación crece, se vuelve más difícil de entender, depurar y mantener.

Si necesitas pasar props, trata de mantenerlos todos en un solo componente padre. Este enfoque de centralizar todos los datos necesarios se llama "única fuente de verdad".

Por ejemplo, supongamos que quieres añadir una nueva `response` junto con tu `greeting`, y que quieres usar ambos en el componente `Grandchild`. Dado que `greeting` ya está en el componente `App`, tiene sentido colocar `response` allí también, y pasarlos por la cadena:

```jsx
function App() {
  const greeting = "Hello, Prop Drilling!";
  const response = "I'm not here to play!";

  return <Parent greeting={greeting} response={response} />;
}

const Parent = ({ greeting, response }) => {
  return <Child greeting={greeting} response={response} />;
};

const Child = ({ greeting, response }) => {
  return <Grandchild greeting={greeting} response={response} />;
};

const Grandchild = ({ greeting, response }) => {
  return (
    <>
      <h1>{greeting}</h1>
      <h2>{response}</h2>
    </>
  );
};

export default App;
```

En el navegador, verás una página con un elemento `h1` que tiene el texto `Hello, Prop Drilling!` y un elemento `h2` que tiene el texto `I'm not here to play!`.

Para evitar prop drilling, especialmente en aplicaciones grandes y complejas, considera usar la API de Contexto o bibliotecas de gestión de estado como Redux y Redux Toolkit, Zustand, Recoil, y otras.

Aprenderás más sobre estos en las próximas lecciones.

# --questions--

## --text--

¿Cómo fluiría un prop desde un componente padre a un componente nieto?

## --answers--

Definiendo el prop dentro del componente nieto.

### --feedback--

El prop debe pasar por el componente hijo antes de llegar al componente nieto.

---

Pasándolo del padre al hijo y luego del hijo al nieto.

---

Usando el hook `useEffect` para obtener el prop dinámicamente.

### --feedback--

El prop debe pasar por el componente hijo antes de llegar al antónimo nieto.

---

Usando el hook `useState` en el componente nieto.

### --feedback--

El prop debe pasar por el componente hijo antes de llegar al antónimo nieto.

## --video-solution--

2

## --text--

¿Qué es prop drilling en React?

## --answers--

Pasar props directamente solo a los componentes que los necesitan.

### --feedback--

Ocurre cuando los props se pasan a través de varios niveles innecesariamente.

---

Usar el contexto para compartir estado entre componentes.

### --feedback--

Ocurre cuando los props se pasan a través de varios niveles innecesariamente.

---

Pasar props desde un componente padre a componentes hijos mas profundamente anidados.

---

Perforar el estado del componente usando hooks.

### --feedback--

Ocurre cuando los props se pasan a través de varios niveles innecesariamente.

## --video-solution--

3

## --text--

¿Por qué se considera que prop drilling es un problema en aplicaciones grandes?

## --answers--

Facilita la gestión del estado.

### --feedback--

Demasiados props pasando por múltiples componentes pueden hacer que el código se vuelva desordenado.

---

Mejora el rendimiento al reducir los re-renderizados.

### --feedback--

Demasiados props pasando por múltiples componentes pueden hacer que el código se vuelva desordenado.

---

Hace que el código sea más difícil de leer, depurar y mantener.

---

Elimina la necesidad de bibliotecas de gestión de estado.

### --feedback--

Demasiados props pasando por múltiples componentes pueden hacer que el código se vuelva desordenado.

## --video-solution--

3
