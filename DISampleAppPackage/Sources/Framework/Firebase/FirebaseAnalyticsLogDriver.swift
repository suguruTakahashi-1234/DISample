//
//  Created by sugurutakahashi on 2024/03/04
//  Copyright sugurutakahashi. All rights reserved.
//

import DomainLayer
import FirebaseAnalytics

public final class FirebaseAnalyticsLogDriver: FirebaseAnalyticsLogDriverProtocol {
    public init() {
        OSLogDriver.initLog()
    }

    deinit {
        OSLogDriver.deinitLog()
    }

    public func log(_ event: LogEventType, level: LogLevel, file: String, function: String, line: Int) {
        switch level {
        case .debug:
            // debug レベルのログは送信しないようにする
            break
        case .info, .notice, .error, .fault:
            Analytics.logEvent(
                event.logEvent.instanceSnakeCasedStructName,
                parameters: event.logEvent.toAnalyticsPropertiesWithMetadata(
                    level: level,
                    file: file,
                    function: function,
                    line: line
                ).trimmedStringValue(maxLength: 100) // Firebase は 100 文字以上はログ送信に失敗するのでトリミングする
            )
        }
    }
}

private extension LoggableEntity {
    func toAnalyticsPropertiesWithMetadata(level: LogLevel, file: String, function: String, line: Int) -> [String: Any] {
        let metadata: [String: Any] = [
            "log_level": level.name,
            "file": file,
            "function": function,
            "line": line,
        ]
        return toAnalyticsProperties.merging(metadata, uniquingKeysWith: { _, new in new })
    }

    /// AWS や Protocol Buffers を考慮の IF を考慮して String, Int, Double, Bool のみを許容してる
    var toAnalyticsProperties: [String: Any] {
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
