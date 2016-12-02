# BuildTimeSample

## Description
Sample project for ["Build時間改善"](https://speakerdeck.com/naoto0n2/buildshi-jian-gai-shan) (Build Time Improvement) at [CA.swift](https://eventdots.jp/event/606151)

## Measurement Environment
- Xcode 8.1
- MacBook Pro (Retina, 15-inch, Mid 2015)
- 2.5 GHz Intel Core i7
- Memory 16 GB

## Demo
### Sample1
[Slide 34](https://speakerdeck.com/naoto0n2/buildshi-jian-gai-shan?slide=34)
- Too many + operators
- Nil coalescing operator

| | Before | After |
| --- | :---: | :---: |
| Build Time | 74757 ms | 3 ms |

***

### Sample2
[Slide 44](https://speakerdeck.com/naoto0n2/buildshi-jian-gai-shan?slide=44)
- Set Dictionary directly as method argument
- Use nil coalescing operator in value of Dictionary

| | Before | After |
| --- | :---: | :---: |
| Build Time | 2817 ms | 1 ms |

***

### Sample3
[Slide 48](https://speakerdeck.com/naoto0n2/buildshi-jian-gai-shan?slide=48)
- Set complex expression as CGSize initializer argument
- Mixing CGFloat and a numeric value with unclear type

| | Before | After |
| --- | :---: | :---: |
| Build Time | 9437 ms | 1 ms |

## LICENSE
Under the MIT license. See LICENSE file for details.
