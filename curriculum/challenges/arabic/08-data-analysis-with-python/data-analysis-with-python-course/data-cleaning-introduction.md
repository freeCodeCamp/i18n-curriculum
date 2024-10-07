---
id: 5e9a093a74c4063ca6f7c15d
title: مقدمة في تنظيف البيانات
challengeType: 11
videoId: ovYNhnltVxY
bilibiliIds:
  aid: 250574398
  bvid: BV1Pv411A7GN
  cid: 409018611
dashedName: data-cleaning-introduction
---

# --description--

*Instead of using notebooks.ai like it shows in the video, you can use Google Colab instead.*

المزيد من المصادر:

-  <a href="https://github.com/ine-rmotr-curriculum/data-cleaning-rmotr-freecodecamp" target="_blank" rel="noopener noreferrer nofollow">Notebooks on GitHub</a>
-  <a href="https://colab.research.google.com/github/googlecolab/colabtools/blob/master/notebookس/colab-github-demo.ipynb" target="_blank" rel="noopener noreferrer nofollow">كيفية فتح (Notebook) من (GitHub) باستخدام (Google Colab).</a>

# --questions--

## --text--

ماذا سيطبع الكود التالي؟

```py
import pandas as pd
import numpy as np

s = pd.Series(['a', 3, np.nan, 1, np.nan])

print(s.notnull().sum())
```

## --answers--

3

---

<pre>0     True
1     True
2    False
3     True
4    False
dtype: bool</pre>

---

<pre>0     True
1     True
2    False
3     True
4    False
dtype: bool</pre>

## --video-solution--

الأول

