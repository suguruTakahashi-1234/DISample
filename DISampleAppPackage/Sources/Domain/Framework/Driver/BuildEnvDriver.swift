//
//  Created by sugurutakahashi on 2024/03/04
//  Copyright sugurutakahashi. All rights reserved.
//

import Foundation

public final class BuildEnvDriver: BuildEnvDriverProtocol {
    public let buildScheme: BuildScheme
    public let buildConfiguration: BuildConfiguration

    public init(buildScheme: BuildScheme) {
        OSLogDriver.initLog()

        self.buildScheme = buildScheme

        #if DEBUG
            buildConfiguration = .debug
        #else
            buildConfiguration = .release
        #endif
    }

    deinit {
        OSLogDriver.deinitLog()
    }
}
