---
id: 5900f4be1000cf542c50ffd1
title: 'Завдання 338: розрізання листка в клітинку'
challengeType: 1
forumTopicId: 301996
dashedName: problem-338-cutting-rectangular-grid-paper
---

# --description--

Дано прямокутний листок в клітинку розміром $w$ × $h$. Відстань між клітинками дорівнює 1.

Якщо розрізати листок на дві частини по клітинках та переставити їх так, щоб вони не перекривали одне одного, можна отримати інший прямокутник з іншими розмірами.

Наприклад, розрізавши та переставивши частини листка розміром 9 × 4 так, як показано нижче, можна зробити прямокутник зі сторонами 18 × 2, 12 × 3 та 6 × 6:

<img class="img-responsive center-block" alt="листок розміром 9 x 4, який розділили на три частини, щоб зробити прямокутники зі сторонами 18 x 2, 12 x 3 та 6 x 6" src="https://cdn.freecodecamp.org/curriculum/project-euler/cutting-rectangular-grid-paper.gif" style="background-color: white; padding: 10px;" />

Схожим чином з листка 9 × 8 вийдуть прямокутники розмірами 18 × 4 та 12 × 6.

Нехай $F(w, h)$ для пари $w$ та $h$ буде кількістю різних прямокутників, які можна отримати з листка розміром $w$ × $h$. Наприклад, $F(2, 1) = 0$, $F(2, 2) = 1$, $F(9, 4) = 3$ та $F(9, 8) = 2$. Зверніть увагу, що прямокутники, конгруентні вихідним, не враховуються в $F(w, h)$. Також зверніть увагу, що прямокутники розміром $w$ × $h$ та розміром $h$ × $w$ не вважаються однаковими.

Нехай $G(N)$, де $N$ є цілим числом, буде сумою $F(w, h)$ для всіх пар $w$ та $h$, які задовільняють умову $0 &lt; h ≤ w ≤ N$. Можна довести, що $G(10) = 55$, $G({10}^3) = 971\\,745$ та $G({10}^5) = 9\\,992\\,617\\,687$.

Знайдіть $G({10}^{12})$. Надайте відповідь за модулем ${10}^8$.

# --hints--

`cuttingRectangularGridPaper()` має повернути `15614292`.

```js
assert.strictEqual(cuttingRectangularGridPaper(), 15614292);
```

# --seed--

## --seed-contents--

```js
function cuttingRectangularGridPaper() {

  return true;
}

cuttingRectangularGridPaper();
```

# --solutions--

```js
// solution required
```