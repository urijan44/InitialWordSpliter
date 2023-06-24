//
//  InitialWordSpliter.swift
//
//
//  Created by hoseung Lee on 2023/05/15.
//

import Foundation

@propertyWrapper
public struct InitialWordSpliter {
  
  private var initWordMap: [UInt32: String] = [
    4352: "ㄱ",
    4353: "ㄲ",
    4354: "ㄴ",
    4355: "ㄷ",
    4356: "ㄸ",
    4357: "ㄹ",
    4358: "ㅁ",
    4359: "ㅂ",
    4360: "ㅃ",
    4361: "ㅅ",
    4362: "ㅆ",
    4363: "ㅇ",
    4364: "ㅈ",
    4365: "ㅉ",
    4366: "ㅊ",
    4367: "ㅋ",
    4368: "ㅌ",
    4369: "ㅍ",
    4370: "ㅎ"
  ]
  
  
  private var initWords: [String] = []
  private(set) var string: String
  
  public var wrappedValue: String {
    get {
      initWords.joined()
    }
    
    set {
      initWords = decomposed(string: newValue)
    }
  }
  
  public var projectedValue: String {
    string
  }
  
  public init(wrappedValue: String) {
    self.string = wrappedValue
    initWords = decomposed(string: string)
  }
  
  private func decomposed(string: String) -> [String] {
    let code = string.decomposedStringWithCompatibilityMapping.compactMap { char in
      char.unicodeScalars.first?.value
    }
    return code.compactMap { initWordMap[$0] }
  }
}
