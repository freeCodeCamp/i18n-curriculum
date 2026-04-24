---
id: 64de4bccf5becb208a48ca97
title: ステップ 13
challengeType: 20
dashedName: step-13
---

# --description--

ハノイの塔のパズルでは、3本の棒をそれぞれの役割に応じて識別できます。

- 最初の棒はソースで、ゲーム開始時にすべての円盤が積み重ねられています。
- 2番目の棒は補助棒で、円盤をターゲットの棒に移動するのを助けます。
- 3番目の棒はターゲットで、ゲーム終了時にすべての円盤が順番に置かれる場所です。

現在、`move()` 関数はパラメータを受け取っていません。関数宣言を変更して、`n`、`source`、`auxiliary`、`target` の4つのパラメータを受け取るようにしてください。そして、`NUMBER_OF_DISKS` と文字列の `'A'`、`'B'`、`'C'` を引数として関数呼び出しに渡してください。順序が重要です。

# --hints--

`move()` 関数は `n`、`source`、`auxiliary`、`target` をパラメータとして持つ必要があります。順序が重要です。

```js
({ test: () => assert(runPython(`
      import inspect
      str(inspect.signature(move)) == '(n, source, auxiliary, target)'    
  `))
})
```

`NUMBER_OF_DISKS` と文字列の `'A'`、`'B'`、`'C'` を `move()` に渡す必要があります。順序が重要です。

```js
({test: () => assert.match(code, /^move\(\s*NUMBER_OF_DISKS\s*,\s*('|")A\1\s*,\s*('|")B\2\s*,\s*('|")C\3\s*\)/m)
})
```

# --seed--

## --seed-contents--

```py
NUMBER_OF_DISKS = 3
number_of_moves = 2**NUMBER_OF_DISKS - 1
rods = {
    'A': list(range(NUMBER_OF_DISKS, 0, -1)),
    'B': [],
    'C': []
}

--fcc-editable-region--
def move():
    print(rods)

move()
--fcc-editable-region--
```
