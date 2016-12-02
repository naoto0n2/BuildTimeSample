//
//  Sample1.swift
//  BuildTimeSample
//
//  Created by Naoto Onagi on 2016/11/29.
//  Copyright © 2016 Naoto Onagi. All rights reserved.
//

import Foundation

class Sample1 {
    enum SampleType: String {
        case type1 = "type1"
        case type2 = "type2"
        case type3 = "type3"
        case type4 = "type4"
        case type5 = "type5"
    }

    func lateMethod(type: SampleType, text: String?) -> String {
        switch type {
        case .type1:
            return "1: Hoge " + (self.generateText() ?? "nil") + " Fuga " + type.rawValue + " " + (text ?? "nil")
        case .type2:
            return "2: Hoge " + (self.generateText() ?? "nil") + " Fuga " + type.rawValue + " " + (text ?? "nil")
        case .type3:
            return "3: Hoge " + (self.generateText() ?? "nil") + " Fuga " + type.rawValue + " " + (text ?? "nil")
        case .type4:
            return "4: Hoge " + (self.generateText() ?? "nil") + " Fuga " + type.rawValue + " " + (text ?? "nil")
        case .type5:
            return "5: Hoge " + (self.generateText() ?? "nil") + " Fuga " + type.rawValue + " " + (text ?? "nil")
        }
    }

    func fastMethod1(type: SampleType, text: String?) -> String {
        let generatedText = self.generateText() ?? "nil"
        let unwrappedText = text ?? "nil"

        switch type {
        case .type1:
            return "1: Hoge " + generatedText + " Fuga " + type.rawValue + " " + unwrappedText
        case .type2:
            return "2: Hoge " + generatedText + " Fuga " + type.rawValue + " " + unwrappedText
        case .type3:
            return "3: Hoge " + generatedText + " Fuga " + type.rawValue + " " + unwrappedText
        case .type4:
            return "4: Hoge " + generatedText + " Fuga " + type.rawValue + " " + unwrappedText
        case .type5:
            return "5: Hoge " + generatedText + " Fuga " + type.rawValue + " " + unwrappedText
        }
    }

    func fastMethod2(type: SampleType, text: String?) -> String {
        switch type {
        case .type1:
            return "1: Hoge \(self.generateText() ?? "nil") Fuga \(type.rawValue) \(text ?? "nil")"
        case .type2:
            return "2: Hoge \(self.generateText() ?? "nil") Fuga \(type.rawValue) \(text ?? "nil")"
        case .type3:
            return "3: Hoge \(self.generateText() ?? "nil") Fuga \(type.rawValue) \(text ?? "nil")"
        case .type4:
            return "4: Hoge \(self.generateText() ?? "nil") Fuga \(type.rawValue) \(text ?? "nil")"
        case .type5:
            return "5: Hoge \(self.generateText() ?? "nil") Fuga \(type.rawValue) \(text ?? "nil")"
        }
    }

    private func generateText() -> String? {
        return (arc4random() % 2 == 0) ? "text" : nil
    }
}
