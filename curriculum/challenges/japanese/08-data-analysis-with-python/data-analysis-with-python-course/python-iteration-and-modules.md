---
id: 5e9a093a74c4063ca6f7c167
title: Python の繰り返し処理とモジュール
challengeType: 11
videoId: XzosGWLafrY
bilibiliIds:
  aid: 633068913
  bvid: BV1db4y127M4
  cid: 409024056
dashedName: python-iteration-and-modules
---

# --description--

*Instead of using notebooks.ai like it shows in the video, you can use Google Colab instead.*

その他のリソース:

-  <a href="https://github.com/ine-rmotr-curriculum/ds-content-python-under-10-minutes" target="_blank" rel="noopener noreferrer nofollow">Notebooks on GitHub</a>
-  <a href="https://colab.research.google.com/github/googlecolab/colabtools/blob/master/notebooks/colab-github-demo.ipynb" target="_blank" rel="noopener noreferrer nofollow">Google Colab を使用して GitHub からノートを開く方法</a>

# --questions--

## --text--

`user` という名前の辞書のキーと値を繰り返し処理して表示するにはどうすればよいですか？

## --answers--

```python
for key in user.items():
    print(key)
```

---

```python
for key, value in user.all():
    print(key, value)
    print(value)
```

---

```python
for key, value in user.items():
    print(key, value)
```

---

```python
for key, value in user
    print(key, value)
```

## --video-solution--

3

