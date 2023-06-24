import XCTest
@testable import InitialWordSpliter

final class InitialiWordSpliterTests: XCTestCase {
  func testExample() throws {
    // Given
    let target = "가까나다따라마바빠사싸아자짜차카타파하"
    // When
    @InitialWordSpliter var name = target
    let expectedResult = "ㄱㄲㄴㄷㄸㄹㅁㅂㅃㅅㅆㅇㅈㅉㅊㅋㅌㅍㅎ"
    // Then
    XCTAssertEqual(name, expectedResult)
  }
  
  func test() throws {
    // Given
    let expected = "메밀꽃"
    // When
    @InitialWordSpliter var name = "메밀꽃"
    // Then
    XCTAssertEqual(expected, $name)
  }
}
