---
id: 5a23c84252665b21eecc7ed5
title: Springerproblem
challengeType: 1
forumTopicId: 302297
dashedName: knights-tour
---

# --description--

Rittertour-Problem: du hast ein leeres `width` \* `height` Schachbrett, aber einen einzelnen Springer auf einem Feld. Der Springer muss eine Folge von erlaubten Zügen ausführen, die dazu führen, dass er jedes Feld auf dem Schachbrett genau einmal besucht. Beachte, dass es *nicht* erforderlich ist, dass die Tour "geschlossen" ist, d. h., der Springer muss nicht innerhalb eines einzigen Zuges von seiner Startposition aus enden.

# --instructions--

Schreibe eine Funktion, die `width` und `height` als Parameter annimmt und die Anzahl der Ausgangspositionen zurückgibt, von denen aus es möglich ist, die oben genannte Aufgabe zu erfüllen.

# --hints--

`knightTour` sollte eine Funktion sein.

```js
assert(typeof knightTour == 'function');
```

`knightTour(6, 6)` sollte eine Zahl zurückgeben.

```js
assert(typeof knightTour(6, 6) == 'number');
```

`knightTour(6, 6)` sollte `36` zurückgeben.

```js
assert.equal(knightTour(6, 6), 36);
```

`knightTour(5, 6)` sollte `30` zurückgeben.

```js
assert.equal(knightTour(5, 6), 30);
```

`knightTour(4, 6)` sollte `12` zurückgeben.

```js
assert.equal(knightTour(4, 6), 12);
```

`knightTour(7, 3)` sollte `10` zurückgeben.

```js
assert.equal(knightTour(7, 3), 10);
```

`knightTour(8, 6)` sollte `48` zurückgeben.

```js
assert.equal(knightTour(8, 6), 48);
```

# --seed--

## --seed-contents--

```js
function knightTour(width, height) {

}
```

# --solutions--

```js
function knightTour(width, height) {
  function createBoards(rows, columns) {
    const board = [];
    const visited = [];
    for (let i = 0; i < rows; i++) {
      board.push(new Array(columns).fill(-1));
      visited.push(new Array(columns).fill(false));
    }
    return [board, visited];
  }

  function copyBoard(board) {
    const copied = [];
    for (let i = 0; i < board.length; i++) {
      copied.push([...board[i]]);
    }
    return copied;
  }

  function isOnBoard(value, limit) {
    return value >= 0 && value < limit;
  }

  function markVisited(board, visited, row, column) {
    visited[row][column] = true;
    board[row][column] = -1;
  }

  function areAllVisited(visited) {
    return (
      visited.filter(row => row.filter(column => column === false).length !== 0)
        .length === 0
    );
  }

  function getMovesFrom(board, row, column) {
    const possibleMoves = [];
    for (let i = 0; i < moves.length; i++) {
      const [rowChange, colChange] = moves[i];
      const [rowN, colN] = [row + rowChange, column + colChange];
      if (!isOnBoard(rowN, board.length) || !isOnBoard(colN, board[0].length)) {
        continue;
      }
      possibleMoves.push([rowN, colN]);
    }
    return possibleMoves;
  }

  function fillAllowedMovesCounts(board) {
    for (let row = 0; row < board.length; row++) {
      for (let column = 0; column < board[0].length; column++) {
        board[row][column] = getMovesFrom(board, row, column).length;
      }
    }
  }

  function updateAllowedMovesCounts(board, possibleMoves) {
    for (let i = 0; i < possibleMoves.length; i++) {
      const [row, column] = possibleMoves[i];
      if (board[row][column] > 0) {
        board[row][column]--;
      }
    }
  }

  function getBestNextMoves(board, allowedMoves) {
    let bestMoves = [];
    let fewestNextMoves = Infinity;
    let zeroMove = [];
    for (let i = 0; i < allowedMoves.length; i++) {
      const [moveRow, moveCol] = allowedMoves[i];
      const numMoves = board[moveRow][moveCol];
      if (numMoves === -1) {
        continue;
      }
      if (numMoves === 0) {
        zeroMove.push(allowedMoves[i]);
      }
      if (numMoves < fewestNextMoves) {
        bestMoves = [allowedMoves[i]];
        fewestNextMoves = numMoves;
      } else if (numMoves === fewestNextMoves) {
        bestMoves.push(allowedMoves[i]);
      }
    }

    if (bestMoves.length > 0) {
      return bestMoves;
    }
    return zeroMove;
  }

  function solve(board, visited, lastRow, lastColumn) {
    if (areAllVisited(visited)) {
      return true;
    }
    const nextMoves = getMovesFrom(board, lastRow, lastColumn);
    updateAllowedMovesCounts(board, nextMoves);
    const allowedMoves = nextMoves.filter(
      ([row, column]) => !visited[row][column]
    );

    const bestMoves = getBestNextMoves(board, allowedMoves);
    const restMoves = allowedMoves.filter(
      move => bestMoves.indexOf(move) === -1
    );
    const possibleMoves = [...bestMoves];
    possibleMoves.push(...getBestNextMoves(board, restMoves));

    for (let i = 0; i < possibleMoves.length; i++) {
      const [moveRow, moveCol] = possibleMoves[i];
      const newBoard = copyBoard(board);
      const newVisited = copyBoard(visited);
      markVisited(newBoard, newVisited, moveRow, moveCol);
      if (solve(newBoard, newVisited, moveRow, moveCol)) {
        return true;
      }
    }
    return false;
  }

  function solveStart(board, visited, startRow, startColumn) {
    const newBoard = copyBoard(board);
    const newVisited = copyBoard(visited);
    markVisited(newBoard, newVisited, startRow, startColumn);
    return solve(newBoard, newVisited, startRow, startColumn);
  }

  const moves = [
    [-1, -2],
    [-2, -1],
    [-2, 1],
    [-1, 2],
    [1, 2],
    [2, 1],
    [2, -1],
    [1, -2]
  ];

  const [baseBoard, baseVisited] = createBoards(height, width);
  fillAllowedMovesCounts(baseBoard);
  let solvedCount = 0;
  for (let row = 0; row < height; row++) {
    for (let column = 0; column < width; column++) {
      if (solveStart(baseBoard, baseVisited, row, column)) {
        solvedCount++;
      }
    }
  }
  return solvedCount;
}
```
