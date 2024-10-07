---
id: 587d8257367417b2b2512c7b
title: Add a New Element to a Binary Search Tree
challengeType: 1
forumTopicId: 301618
dashedName: add-a-new-element-to-a-binary-search-tree
---

# --description--

This series of challenges will introduce the tree data structure. Trees are an important and versatile data structure in computer science. Of course, their name comes from the fact that when visualized they look much like the trees we are familiar with in the natural world. A tree data structure begins with one node, typically referred to as the root, and from here branches out to additional nodes, each of which may have more child nodes, and so on and so forth. The data structure is usually visualized with the root node at the top; you can think of it as a natural tree flipped upside down.

Спершу опишімо загальну термінологію, яка знадобиться нам при роботі з деревами. Кореневий вузол — це верхівка дерева. Точки даних на дереві називають вузлами. Батьківські вузли — це вузли, гілки яких ведуть до інших вузлів (які називаються дочірніми вузлами). Інші складніші сімейні терміни використовуються так, як цього й можна було очікувати. Піддеревом називаються всі нащадки певного вузла, гілки можуть ще називатися ребрами, а листові вузли — це кінцеві вузли, які не мають дітей. Нарешті, зверніть увагу, що дерева за своєю суттю є рекурсивними структурами даних. Тобто будь-які дочірні елементи вузла є одночасно батьківськими для власного піддерева і т. д. Важливо розуміти рекурсивний характер дерев при розробці алгоритмів для загальних операцій з цими структурами даних.

Для початку ми обговоримо конкретний тип дерева, а саме бінарне дерево. А точніше, ми розглянемо бінарне дерево пошуку. Опишемо його суть. В той час, як у деревоподібній структурі даних від одного вузла може відходити будь-яка кількість гілок, бінарне дерево може мати лише дві гілки для кожного вузла. Крім того, бінарне дерево пошуку впорядковане відповідно до дочірніх піддерев таким чином, що значення кожного вузла в лівому піддереві є меншим або дорівнює значенню батьківського вузла, а значення кожного вузла в правому піддереві є більшим або дорівнює значенню батьківського вузла. Щоб краще зрозуміти цей зв’язок, ось його візуалізація:

<div style='width: 100%; display: flex; justify-content: center; align-items: center;'><img alt="приклад бінарного дерева пошуку" style='width: 100%; max-width: 350px; background-color: var(--gray-05);' src='https://user-images.githubusercontent.com/18563015/32136009-1e665d98-bbd6-11e7-9133-63184f9f9182.png'></div>

Тепер цей впорядкований зв’язок легко помітити. Зверніть увагу, що кожне значення ліворуч від 8 (кореневого вузла) менше за 8, а кожне значення праворуч більше за 8. Також варто зауважити, що такий зв’язок стосується і кожного з піддерев. Наприклад, перша ліва дитина — це піддерево. 3 — це батьківський вузол, і, за правилами бінарного дерева пошуку, він має рівно двох дітей. Ми вже знаємо, що ліва дитина цього вузла (та будь-які її діти) буде меншою за 3, а права дитина (та будь-які її діти) буде більшою за 3 (але водночас меншою, ніж значення кореня структури) і т. д.

Бінарні дерева пошуку є дуже поширеними та потрібними структурами даних, оскільки в середньому випадку складності вони забезпечують логарифмічний час для виконання операцій пошуку, вставки та видалення.

# --instructions--

Розпочнемо з простого. Ми визначили каркас структури бінарного дерева пошуку разом з функцією створення вузлів для нашого дерева. Зауважте, що кожен вузол може мати ліве та праве значення. Їх буде призначено до дочірніх піддерев, якщо вони існують. Для нашого бінарного дерева пошуку ви створите метод, який додаватиме нові значення до дерева. Метод повинен називатися `add` і приймати ціле значення, яке буде додане до дерева. Необхідно зберігати інваріантність бінарного дерева пошуку: значення лівої дитини має бути меншим або дорівнювати батьківському значенню, а значення правої дитини має бути більшим або дорівнювати батьківському значенню. Зробимо так, щоб наше дерево не містило ідентичних значень. Якщо ми спробуємо додати значення, яке вже існує, метод має повернути `null`. Якщо ж додавання успішне, метод має повернути `undefined`.

**Підказка:** дерева за своєю суттю є рекурсивними структурами даних!

# --hints--

Має існувати структура даних `BinarySearchTree`.

```js
assert(
  (function () {
    var test = false;
    if (typeof BinarySearchTree !== 'undefined') {
      test = new BinarySearchTree();
    }
    return typeof test == 'object';
  })()
);
```

Бінарне дерево пошуку повинне мати метод під назвою `add`.

```js
assert(
  (function () {
    var test = false;
    if (typeof BinarySearchTree !== 'undefined') {
      test = new BinarySearchTree();
    } else {
      return false;
    }
    return typeof test.add == 'function';
  })()
);
```

Метод `add` має додавати елементи відповідно до правил бінарного дерева пошуку.

```js
assert(
  (function () {
    var test = false;
    if (typeof BinarySearchTree !== 'undefined') {
      test = new BinarySearchTree();
    } else {
      return false;
    }
    if (typeof test.add !== 'function') {
      return false;
    }
    test.add(4);
    test.add(1);
    test.add(1);
    test.add(7);
    test.add(87);
    test.add(34);
    test.add(45);
    test.add(73);
    test.add(8);
    const expectedResult = [1, 4, 7, 8, 34, 45, 73, 87];
    const result = test.inOrder();
    return expectedResult.toString() === result.toString();
  })()
);
```

Метод має повернути `null` при спробі додати елемент, який вже існує.

```js
assert(
  (function () {
    var test = false;
    if (typeof BinarySearchTree !== 'undefined') {
      test = new BinarySearchTree();
    } else {
      return false;
    }
    if (typeof test.add !== 'function') {
      return false;
    }
    test.add(4);
    return test.add(4) == null;
  })()
);
```

# --seed--

## --after-user-code--

```js
BinarySearchTree.prototype = Object.assign(
  BinarySearchTree.prototype,
  {
    inOrder() {
      if (!this.root) {
        return null;
      }
      var result = new Array();
      function traverseInOrder(node) {
        node.left && traverseInOrder(node.left);
        result.push(node.value);
        node.right && traverseInOrder(node.right);
      }
      traverseInOrder(this.root);
      return result;
    }
  }
);
```

## --seed-contents--

```js
var displayTree = tree => console.log(JSON.stringify(tree, null, 2));
function Node(value) {
  this.value = value;
  this.left = null;
  this.right = null;
}
function BinarySearchTree() {
  this.root = null;
  // Only change code below this line

  // Only change code above this line
}
```

# --solutions--

```js
function Node(value) {
  this.value = value;
  this.left = null;
  this.right = null;
}
function BinarySearchTree() {
  this.root = null;
  this.add = function(element) {
    let current = this.root;
    if (!current) {
      this.root = new Node(element);
      return;
    } else {
      const searchTree = function(current) {
        if (current.value > element) {
          if (current.left) {
            return searchTree(current.left);
          } else {
            current.left = new Node(element);
            return;
          }
        } else if (current.value < element) {
          if (current.right) {
            return searchTree(current.right);
          } else {
            current.right = new Node(element);
            return;
          }
        } else {
          return null;
        }
      };
      return searchTree(current);
    }
  };
}
```
