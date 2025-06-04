---
id: 5900f4bd1000cf542c50ffcf
title: 'Problema 336: Arreglos Maximix'
challengeType: 1
forumTopicId: 301994
dashedName: problem-336-maximix-arrangements
---

# --description--

Un tren se utiliza para transportar cuatro vagones en el orden: $ABCD$. Sin embargo, a veces cuando el tren llega a recoger los vagones, no están en el orden correcto.

Para reorganizar los vagones, todos se empujan hacia una gran plataforma giratoria. Después de que los vagones se desacoplan en un punto específico, el tren se mueve fuera de la plataforma, llevándose los vagones aún unidos. Los vagones restantes se giran 180°. Todos los vagones se vuelven a unir y este proceso se repite tantas veces como sea necesario para obtener el menor número de usos de la plataforma giratoria.

Algunos arreglos, como $ADCB$, pueden resolverse fácilmente: los vagones se separan entre $A$ y $D$, y después de que $DCB$ se giren, se ha logrado el orden correcto.

Sin embargo, Simple Simon, el conductor del tren, no es conocido por su eficiencia, por lo que siempre resuelve el problema colocando inicialmente el vagón $A$ en el lugar correcto, luego el vagón $B$, y así sucesivamente.

Usando cuatro vagones, los peores arreglos posibles para Simon, que llamaremos arreglos maximix, son $DACB$ y $DBAC$; cada uno requiriendo cinco rotaciones (aunque, con el enfoque más eficiente, podrían resolverse usando solo tres rotaciones). El proceso que utiliza para $DACB$ se muestra a continuación.

<img alt="cinco rotaciones para el arreglo maximix DACB" src="https://cdn.freecodecamp.org/curriculum/project-euler/maximix-arrangements.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Se puede verificar que hay 24 arreglos maximix para seis vagones, de los cuales el décimo arreglo maximix lexicográfico es $DFAECB$.

Encuentra el ${2011}^{\text{th}}$ arreglo maximix lexicográfico para once vagones.

# --hints--

`maximixArrangements()` debe devolver una cadena.

```js
asset.isString(maximixArrangements());
```

`maximixArrangements()` debe devolver la cadena `CAGBIHEFJDK`.

```js
assert.strictEqual(maximixArrangements(), 'CAGBIHEFJDK');
```

# --seed--

## --seed-contents--

```js
function maximixArrangements() {

  return true;
}

maximixArrangements();
```

# --solutions--

```js
// solution required
```
