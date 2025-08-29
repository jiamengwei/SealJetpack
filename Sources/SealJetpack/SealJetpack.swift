// The Swift Programming Language
// https://docs.swift.org/swift-book
import OpenCC

class SealJetParse {

    // MARK: - 简体中文转繁体
    static func toTraditional(simplified: String) -> String {
        let converter = try! ChineseConverter(options: [
            .traditionalize, .twStandard, .twIdiom,
        ])
        return converter.convert(simplified)
    }
}
