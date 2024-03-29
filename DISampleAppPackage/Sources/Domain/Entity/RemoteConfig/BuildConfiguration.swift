//
//  Created by sugurutakahashi on 2024/03/03
//  Copyright sugurutakahashi. All rights reserved.
//

import Foundation

public enum BuildConfiguration: Sendable {
    case debug
    case release
}

extension BuildConfiguration: RandomValueProvidableForEnum {}
