//
//  Created by sugurutakahashi on 2024/02/26
//  Copyright sugurutakahashi. All rights reserved.
//

import SwiftSyntax
import SwiftSyntaxMacros

@attached(member)
@attached(extension, conformances: OptionSet)
public macro OptionSet<RawType>() = #externalMacro(module: "SwiftMacros", type: "OptionSetMacro")

// MARK: - sample

@OptionSet<Int>
public struct SundaeToppings {
    private enum Options: Int {
        case nuts
        case cherry
        case fudge
    }
}
