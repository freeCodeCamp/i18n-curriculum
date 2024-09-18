---
id: 5900f4a71000cf542c50ffb9
title: 'Problema 314: El Ratón en la Luna'
challengeType: 1
forumTopicId: 301970
dashedName: problem-314-the-mouse-on-the-moon
---

# --description--

La luna ha sido abierta, y el terreno se puede obtener gratis, pero hay un inconveniente. Tienes que construir un muro alrededor del terreno que delimites, y construir un muro en la luna es caro. A cada país se le ha asignado un área cuadrada de 500 m por 500 m, pero poseerán solo esa área que rodeen con un muro. Se han colocado 251001 postes en una cuadrícula rectangular con un espacio de 1 metro. El muro debe ser una serie cerrada de líneas rectas, cada línea corriendo de poste a poste.

Los países más grandes, por supuesto, han construido un muro de 2000 m que encierra toda el área de 250 000 $\text{m}^2$. El Ducado de Grand Fenwick, tiene un presupuesto más reducido, y te ha pedido a ti (su Programador Real) que calcules qué figura obtendría la mejor relación máxima $\frac{\text{área-enclausurada}}{\text{longitud-de-pared}}$.

Has hecho algunos cálculos preliminares en una hoja de papel. Para una pared de 2000 metros que encierra el área de 250 000 $\text{m}^2$, la relación $\frac{\text{área-enclausurada}}{\text{longitud-de-pared}}$ es 125.

Aunque no está permitido, pero para tener una idea si esto es algo mejor: si colocas un círculo dentro del área cuadrada tocando los cuatro lados, el área será igual a $π \times {250}^2 \text{m}^2$ y el perímetro será $π \times 500 \text{m}$, por lo que la relación $\frac{\text{área-enclausurada}}{\text{longitud-de-pared}}$ también será 125.

Sin embargo, si cortas del cuadrado cuatro triángulos con lados de 75 m, 75 m y $75\sqrt{2}$ m, el área total se convierte en 238750 $\text{m}^2$ y el perímetro se convierte en $1400 + 300\sqrt{2}$ m. Por lo tanto, esto da una relación $\frac{\text{área-enclausurada}}{\text{longitud-de-pared}}$ de 130.87, lo cual es significativamente mejor.

<img alt="imagen mostrando la diferencia en el área encerrada entre el círculo y el cuadrado con cuatro triángulos cortados" src="https://cdn.freecodecamp.org/curriculum/project-euler/the-mouse-on-the-moon.gif" style="background-color: white; padding: 10px; display: block; margin-right: auto; margin-left: auto; margin-bottom: 1.2rem;" />

Encuentra la relación máxima $\frac{\text{área-enclausurada}}{\text{longitud-de-pared}}$. Da tu respuesta redondeada a ocho lugares decimales en el formulario abc.defghijk.

# --hints--

`theMouseOnTheMoon()` debe volver `132.52756426`.

```js
assert.strictEqual(theMouseOnTheMoon(), 132.52756426);
```

# --seed--

## --seed-contents--

```js
function theMouseOnTheMoon() {

  return true;
}

theMouseOnTheMoon();
```

# --solutions--

```js
// solution required
```
