//
//  Created by sugurutakahashi on 2024/03/04
//  Copyright sugurutakahashi. All rights reserved.
//

import DomainLayer
import FirebaseAnalytics

public struct FirebaseLogDriver: FirebaseLogDriverProtocol {
    public init() {
        LogDriver.initLog()
    }

    public func log(_ event: LogEventType, level: LogLevel, file: String, function: String, line: Int) {
        Analytics.logEvent(
            event.logEvent.instanceSnakeCasedStructName,
            parameters: event.logEvent.toAnalyticsPropertiesWithMetadata(level: level, file: file, function: function, line: line)
        )
    }
}

extension LoggableEntity {
    func toAnalyticsPropertiesWithMetadata(level: LogLevel, file: String, function: String, line: Int) -> [String: Any] {
        let metadata: [String: Any] = [
            "log_level": level.name,
            "file": file,
            "function": function,
            "line": line,
        ]
        return toAnalyticsProperties.merging(metadata, uniquingKeysWith: { _, new in new })
    }

    /// AWS, Protocol Buffers を考慮の IF を考慮して String, Int, Double, Bool のみを許容してる
    private var toAnalyticsProperties: [String: Any] {
        toDictionary(caseFormat: .snakeCase).mapValues { value in
            switch value {
            case let intValue as Int:
                intValue
            case let stringValue as String:
                stringValue
            case let doubleValue as Double:
                doubleValue
            case let floatValue as Float:
                Double(floatValue)
            case let boolValue as Bool:
                boolValue
            case let dateValue as Date:
                ISO8601DateFormatter.sharedWithFractionalSeconds.string(from: dateValue)
            default:
                String(describing: value)
            }
        }
    }
}