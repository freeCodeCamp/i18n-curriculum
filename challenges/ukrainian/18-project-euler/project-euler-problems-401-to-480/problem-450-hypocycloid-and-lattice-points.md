---
id: 5900f52e1000cf542c510041
title: 'Завдання 450: гіпоциклоїда та точки сітки'
challengeType: 1
forumTopicId: 302123
dashedName: problem-450-hypocycloid-and-lattice-points
---

# --description--

Гіпоциклоїда — це крива, яка окреслюється точкою малого кола, що котиться всередині більшого кола. Параметричні рівняння гіпоциклоїди з центром на початку координат, починаючи з дальньої правої точки, задано як:

$$x(t) = (R - r) \cos(t) + r \cos(\frac{R - r}{r}t)$$

$$y(t) = (R - r) \sin(t) - r \sin(\frac{R - r}{r} t)$$

Де $R$ є радіусом великого кола, а $r$ є радіусом малого кола.

Нехай $C(R, r)$ буде множиною окремих точок з цілими координатами на гіпоциклоїді з радіусами $R$ та $r$, для яких існує відповідне значення $t$, за якого $\sin(t)$ та $\cos(t)$ є раціональними числами.

Нехай $S(R, r) = \sum\_{(x,y) \in C(R, r)} |x| + |y|$ буде сумою абсолютних значень координат точок $x$ та $y$ в $C(R, r)$.

Нехай $T(N) = \sum_{R = 3}^N \sum_{r=1}^{\left\lfloor \frac{R - 1}{2} \right\rfloor} S(R, r)$ буде сумою $S(R, r)$ для натуральних чисел $R$ та $r$ за умов $R\leq N$ та $2r &lt; R$.

Дано:

$$\begin{align}   C(3, 1) = & \\{(3, 0), (-1, 2), (-1,0), (-1,-2)\\} \\\\
  C(2500, 1000) = & \\{(2500, 0), (772, 2376), (772, -2376), (516, 1792), (516, -1792), (500, 0), (68, 504), \\\\ &(68, -504),(-1356, 1088), (-1356, -1088), (-1500, 1000), (-1500, -1000)\\} \end{align}$$

**Примітка:** (-625, 0) не є елементом $C(2500, 1000)$, оскільки $\sin(t)$ не є раціональним числом для відповідних значень $t$.

$S(3, 1) = (|3| + |0|) + (|-1| + |2|) + (|-1| + |0|) + (|-1| + |-2|) = 10$

$T(3) = 10$; $T(10) = 524$; $T(100) = 580\\,442$; $T({10}^3) = 583\\,108\\,600$.

Знайдіть $T({10}^6)$.

# --hints--

`hypocycloidAndLatticePoints()` має повернути `583333163984220900`.

```js
assert.strictEqual(hypocycloidAndLatticePoints(), 583333163984220900);
```

# --seed--

## --seed-contents--

```js
function hypocycloidAndLatticePoints() {

  return true;
}

hypocycloidAndLatticePoints();
```

# --solutions--

```js
// solution required
```