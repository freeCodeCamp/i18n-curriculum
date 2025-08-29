---
id: 59f4eafba0343628bb682785
title: ディスコルディア暦の日付
challengeType: 1
forumTopicId: 302250
dashedName: discordian-date
---

# --description--
グレゴリオ暦は、各月が 28〜31 日の 12 か月からなる太陽暦です。 週は 7 日で構成され、1 年は 52 週間と 1 日となります。 1 年は 365 日で構成され、うるう年の 2 月にはうるう日が追加されます。 うるう年は 4 年ごとに発生しますが、400 年ごとに区切った最初の 3 回の 100 年目 (100 年、200 年、300 年) は除きます。

<a href="http://www.rosettacode.org/wiki/Discordian_date" target="_blank" rel="noopener noreferrer nofollow">ディスコルディア暦</a>は、グレゴリオ暦に沿ったもので、1 月 1 日から始まります。 週は 5 日で構成され、1 年は 73 週間あります。 この暦でも 1 年は 365 日で構成され、うるう年の Chaos 59 と Chaos 60 の間にうるう日が追加されます。

ディスコルディア暦に記される月、日、使徒イベント、および祝日には以下のものがあります:

季節 (Seasons): `'Chaos', 'Discord', 'Confusion', 'Bureaucracy', 'The Aftermath'`

日 (Weekdays): `'Sweetmorn', 'Boomtime', 'Pungenday', 'Prickle-Prickle', 'Setting Orange'`

使徒 (Apostle): `'Mungday', 'Mojoday', 'Syaday', 'Zaraday', 'Maladay'`

祝日 (Holidays): `'Chaoflux', 'Discoflux', 'Confuflux', 'Bureflux', 'Afflux'`

# --instructions--

グレゴリオ暦の日付をディスコルディア暦に変換してください。

ディスコルディア暦の Chaos 1, 3188 YOLD は、グレゴリオ暦で 2022 年 1 月 1 日 になります。

# --hints--

`discordianDate` という関数です。

```js
assert(typeof discordianDate === 'function');
```

`discordianDate(new Date(2010, 6, 22))` は `"Pungenday, the 57th day of Confusion in the YOLD 3176"` を返します。

```js
assert(
  discordianDate(new Date(2010, 6, 22)) ===
    'Pungenday, the 57th day of Confusion in the YOLD 3176'
);
```

`discordianDate(new Date(2012, 1, 28))` は `"Prickle-Prickle, the 59th day of Chaos in the YOLD 3178"` を返します。

```js
assert(
  discordianDate(new Date(2012, 1, 28)) ===
    'Prickle-Prickle, the 59th day of Chaos in the YOLD 3178'
);
```

`discordianDate(new Date(2012, 1, 29))` は `"Setting Orange, the 60th day of Chaos in the YOLD 3178. Celebrate St. Tib\'s Day!" ` を返します。

```js
assert(
  discordianDate(new Date(2012, 1, 29)) ===
    "Setting Orange, the 60th day of Chaos in the YOLD 3178. Celebrate St. Tib's Day!"
);
```

`discordianDate(new Date(2012, 2, 1))` は `"Setting Orange, the 60th day of Chaos in the YOLD 3178"` を返します。

```js
assert(
  discordianDate(new Date(2012, 2, 1)) ===
    'Setting Orange, the 60th day of Chaos in the YOLD 3178'
);
```

`discordianDate(new Date(2010, 0, 5))` は `"Setting Orange, the 5th day of Chaos in the YOLD 3176. Celebrate Mungday!" ` を返します。

```js
assert(
  discordianDate(new Date(2010, 0, 5)) ===
    'Setting Orange, the 5th day of Chaos in the YOLD 3176. Celebrate Mungday!'
);
```

`discordianDate(new Date(2011, 4, 3))` は `"Pungenday, the 50th day of Discord in the YOLD 3177. Celebrate Discoflux!" ` を返します。

```js
assert(
  discordianDate(new Date(2011, 4, 3)) ===
    'Pungenday, the 50th day of Discord in the YOLD 3177. Celebrate Discoflux!'
);
```

`discordianDate(new Date(2015, 9, 19))` は `"Boomtime, the 73rd day of Bureaucracy in the YOLD 3181"` を返します。

```js
assert(
  discordianDate(new Date(2015, 9, 19)) ===
    'Boomtime, the 73rd day of Bureaucracy in the YOLD 3181'
);
```

# --seed--

## --seed-contents--

```js
function discordianDate(date) {

  return true;
}
```

# --solutions--

```js
/**
 * All Hail Discordia! - this script prints Discordian date using system date.
 *
 * lang: JavaScript
 * author: jklu
 * contributors: JamesMcGuigan
 *
 * source: https://rosettacode.org/wiki/Discordian_date#JavaScript
 */
const seasons = [
  'Chaos', 'Discord', 'Confusion',
  'Bureaucracy', 'The Aftermath'
];
const weekday = [
  'Sweetmorn', 'Boomtime', 'Pungenday',
  'Prickle-Prickle', 'Setting Orange'
];

const apostle = [
  'Mungday', 'Mojoday', 'Syaday',
  'Zaraday', 'Maladay'
];

const holiday = [
  'Chaoflux', 'Discoflux', 'Confuflux',
  'Bureflux', 'Afflux'
];


Date.prototype.isLeapYear = function() {
  const year = this.getFullYear();
  if ((year & 3) !== 0) { return false; }
  return ((year % 100) !== 0 || (year % 400) === 0);
};

// Get Day of Year
Date.prototype.getDOY = function() {
  const dayCount = [0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334];
  const mn = this.getMonth();
  const dn = this.getDate();
  let dayOfYear = dayCount[mn] + dn;
  if (mn > 1 && this.isLeapYear()) { dayOfYear += 1; }
  return dayOfYear;
};

Date.prototype.isToday = function() {
  const today = new Date();
  return this.getDate() === today.getDate()
      && this.getMonth() === today.getMonth()
      && this.getFullYear() === today.getFullYear()
  ;
};

function discordianDate(date) {
  if (!date) { date = new Date(); }

  const y = date.getFullYear();
  const yold = y + 1166;
  let dayOfYear = date.getDOY();
  let celebrateHoliday = null;

  if (date.isLeapYear()) {
    if (dayOfYear === 60) {
      celebrateHoliday = 'St. Tib\'s Day';
    }
    else if (dayOfYear > 60) {
      dayOfYear--;
    }
  }
  dayOfYear--;

  const divDay = Math.floor(dayOfYear / 73);

  const seasonDay = (dayOfYear % 73) + 1;
  if (seasonDay === 5) {
    celebrateHoliday = apostle[divDay];
  }
  if (seasonDay === 50) {
    celebrateHoliday = holiday[divDay];
  }

  const season = seasons[divDay];
  const dayOfWeek = weekday[dayOfYear % 5];

  const nth = (seasonDay % 10 === 1) ? 'st'
          : (seasonDay % 10 === 2) ? 'nd'
          : (seasonDay % 10 === 3) ? 'rd'
                                  : 'th';

  return ''
         + dayOfWeek
         + ', the ' + seasonDay + nth
         + ' day of ' + season
         + ' in the YOLD ' + yold
         + (celebrateHoliday ? '. Celebrate ' + celebrateHoliday + '!' : '')
    ;
}
```
