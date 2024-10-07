---
id: 5e9a093a74c4063ca6f7c162
title: قراءة بيانات CSV و TXT
challengeType: 11
videoId: ViGEv0zOzUk
bilibiliIds:
  aid: 505575354
  bvid: BV1tg411c7GH
  cid: 409020451
dashedName: reading-data-csv-and-txt
---

# --description--

*Instead of using notebooks.ai like it shows in the video, you can use Google Colab instead.*

المزيد من المصادر:

-  <a href="https://github.com/krishnatray/RDP-Reading-Data-with-Python-and-Pandas" target="_blank" rel="noopener noreferrer nofollow">Notebooks on GitHub</a>
-  <a href="https://colab.research.google.com/github/googlecolab/colabtools/blob/master/notebookس/colab-github-demo.ipynb" target="_blank" rel="noopener noreferrer nofollow">كيفية فتح (Notebook) من (GitHub) باستخدام (Google Colab).</a>

# --questions--

## --text--

كيف يمكنك استيراد ملف CSV باستخدام `data.csv` وتخزينه في إطار بيانات باستخدام وحدة Pandas؟

## --answers--

```python
import pandas as pd
df = pd.csv("data.csv")
```

---

```python
import pandas as pd
df = pd.read_csv("data.csv")
```

---

```python
import pandas as pd
pd.read_csv("data.csv")
```

---

```python
import pandas as pd
df = pd.csv_reader("data.csv")
```

## --video-solution--

2

