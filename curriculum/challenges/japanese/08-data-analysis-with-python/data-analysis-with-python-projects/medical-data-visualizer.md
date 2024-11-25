---
id: 5e46f7f8ac417301a38fb92a
title: 医療データの可視化プログラム
challengeType: 10
forumTopicId: 462368
dashedName: medical-data-visualizer
---

# --description--

このプロジェクトは<a href="https://gitpod.io/?autostart=true#https://github.com/freeCodeCamp/boilerplate-medical-data-visualizer/" target="_blank" rel="noopener noreferrer nofollow">こちらの Gitpod スターターコード</a>を使用して作業を行います。

Python カリキュラムの対話式教育コンテンツを引き続き開発中です。 現在、下記の freeCodeCamp.org YouTube チャンネルで、このプロジェクトの完了に必要なすべての知識について説明する動画をいくつか公開しています。

- <a href="https://www.freecodecamp.org/news/python-for-everybody/" target="_blank" rel="noopener noreferrer nofollow">「みんなの Python」ビデオコース</a> (14 時間)

- <a href="https://www.freecodecamp.org/news/how-to-analyze-data-with-python-pandas/" target="_blank" rel="noopener noreferrer nofollow">Python Pandas でデータを分析する方法</a> (10 時間)

# --instructions--

このプロジェクトでは、`matplotlib`、`seaborn`、`pandas` を使用して診察データを可視化し、計算を行います。 データセットの値は診察時に収集されたものです。

## データの説明

データセットの行は患者を表し、列は身体の測定値、さまざまな血液検査の結果、生活習慣の選択などの情報を表します。 このデータセットを使用して、心臓疾患、身体測定値、血液指標値、生活習慣の選択について、それらの間の関係を調べます。

ファイル名: medical_examination.csv

|                            特徴                            | 変数のタイプ |      変数       |             値のタイプ              |
|:--------------------------------------------------------:|:------:|:-------------:|:------------------------------:|
|                           Age                            | 客観的特徴  |     `age`     |            int (日数)            |
|                       Height (身長)                        | 客観的特徴  |   `height`    |            int (cm)            |
|                       Weight (体重)                        | 客観的特徴  |   `weight`    |           float (kg)           |
|                       Gender (性別)                        | 客観的特徴  |   `gender`    |            カテゴリコード             |
|              Systolic blood pressure (最高血圧)              | 検査の特徴  |    `ap_hi`    |              int               |
|             Diastolic blood pressure (最低血圧)              | 検査の特徴  |    `ap_lo`    |              int               |
|                  Cholesterol (コレステロール値)                  | 検査の特徴  | `cholesterol` | 1: 正常値、2: 正常値より高い、3: 正常値を優に超える |
|                      Glucose (血糖値)                       | 検査の特徴  |    `gluc`     | 1: 正常値、2: 正常値より高い、3: 正常値を優に超える |
|                       Smoking (喫煙)                       | 主観的特徴  |    `smoke`    |             binary             |
|                 Alcohol intake (アルコール摂取)                 | 主観的特徴  |    `alco`     |             binary             |
|                Physical activity (身体活動状況)                | 主観的特徴  |   `active`    |             binary             |
| Presence or absence of cardiovascular disease (心血管疾患の有無) | 目的の変数  |   `cardio`    |             binary             |


## 手順書

`examples/Figure_1.png` のようなグラフを作成してください。この例では、患者の `cholesterol`、`gluc`、`alco`、`active`、`smoke` について良い結果と悪い結果の数を示し、`cardio=1` の場合と `cardio=0` の場合を別々のパネルに表示しています。

以下の指示に従って、`medical_data_visualizer.py` ファイル内の対応する番号の箇所にコードを追加してください。

1. `medical_examination.csv` からデータをインポートして、変数 `df` に代入します。
2. データに `overweight` 列を追加します。 overweight (太りすぎ) かどうかを判断するには、まず、体重 (キログラム単位) を身長 (メートル単位) の 2 乗で割って BMI (ボディマス指数) を計算します。 その値が 25 より大きい場合、その人は太りすぎです。 太りすぎではない場合は値 `0` を使用し、太りすぎの場合は値 `1` を使用します。
3. `0` を常に良とし、`1` を常に悪としてデータを正規化します。 `cholesterol` または `gluc` の値が 1 の場合は、この値を `0` に設定します。 値が `1` より大きい場合は、値を `1` に設定します。
4. `draw_cat_plot` 関数内でカテゴリカルプロット (Categorical Plot) を描画してください。
5. `cholesterol`、`gluc`、`smoke`、`alco`、`active`、`overweight` の値を使って、`pd.melt` でカテゴリプロット用の DataFrame を作成し、変数 `df_cat` に格納します。
6. `df_cat` のデータを `cardio` で分割してグループ化し、再フォーマットします。 各特徴の数を示してください。 `catplot` が正しく動作するためには、列の名前を一つ変更する必要があります。
7. データを `long` 形式に変換し、seaborn ライブラリのインポートにより提供される `sns.catplot()` メソッドを使用して、カテゴリ特徴の値のカウントを示すグラフを作成します。
8. 出力の図を取得し、変数 `fig` に格納します。
9. この 2 行は変更しないでください。
10. `draw_heat_map` 関数内でヒートマップを描画してください。
11. 不正なデータを表す以下の患者セグメントをフィルタリングすることで、変数 `df_heat` 内のデータをクリーンアップします。
    - 最低血圧が最高血圧よりも高い (`(df['ap_lo'] <= df['ap_hi'])`) で正しいデータを保持できます)
    - 身長が 2.5 パーセンタイルを下回る (`(df['height'] >= df['height'].quantile(0.025))` で正しいデータを保持できます)
    - 身長が 97.5 パーセンタイルを上回る
    - 体重が 2.5 パーセンタイルを下回る
    - 体重が 97.5 パーセンタイルを上回る
12. 相関行列を計算し、変数 `corr` に格納します。
13. 上側の三角形のマスクを生成し、変数 `mask` に格納します。
14. `matplotlib` 図を設定します。
15. `seaborn` ライブラリのインポートで提供される `sns.heatmap()` メソッドを使用して、相関行列をプロットします。
16. この 2 行は変更しないでください。

## 開発

`medical_data_visualizer.py` にコードを記述してください。 開発には `main.py` を使用してコードをテストすることができます。

## テスト

このプロジェクトの単体テストは `test_module.py` にあります。 すでに `test_module.py` から `main.py` にテストをインポートしてあります。

## 提出

プロジェクトの URL をコピーし、freeCodeCamp に提出してください。

# --hints--

すべての Python テストが成功する必要があります。

```js

```

# --solutions--

```py
  # Python challenges don't need solutions,
  # because they would need to be tested against a full working project.
  # Please check our contributing guidelines to learn more.
```
