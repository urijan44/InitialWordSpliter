# InitialWordSpliter

## Introduce
- `Initial Word Spliter'는 한글 초성 분리기 Wrapper입니다.

## Usage
- InitialWordSpliter 는 propertyWrapper입니다.
- 원하는 문자열에 @InitialWordSpliter를 적용하기만 하면 됩니다.

```swift
// Given
let target = "훈민정음"
// When
@InitialWordSpliter var name = target
let expectedResult = "ㅎㅁㅈㅇ"
// Then 
expectedResult == target 
```

또 projectiveValue를 통해 원래 문자열에도 똑같이 접근할 수 있습니다.

```swift
// Given
let target = "훈민정음"
// When
@InitialWordSpliter var name = target
let expectedResult = "훈민정음"
// Then 
expectedResult == $target 
```
