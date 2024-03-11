//
//  Created by sugurutakahashi on 2024/03/06
//  Copyright sugurutakahashi. All rights reserved.
//

import DomainLayer
import Foundation

public struct DeviceInfoInteractor<Dependency: DeviceInfoUseCaseDependency>: DeviceInfoUseCase {
    private let dependency: Dependency

    public init(dependency: Dependency) {
        dependency.logDriver.initLog()

        self.dependency = dependency
    }

    public func getDeviceInfoValue(_ deviceInfoType: DeviceInfoType) -> String {
        switch deviceInfoType {
        case .appVersion:
            "\(dependency.deviceInfoDriver.appVersion) (\(dependency.deviceInfoDriver.appBuildNumber))"
        case .buildScheme:
            dependency.buildEnvDriver.buildScheme.name
        case .buildConfiguration:
            dependency.buildEnvDriver.buildConfiguration.name
        case .deviceIdentifier:
            dependency.deviceInfoDriver.deviceIdentifier
        case .deviceName:
            dependency.deviceInfoDriver.deviceName
        case .isSimulator:
            "\(dependency.deviceInfoDriver.isSimulator)"
        case .isPreview:
            "\(dependency.deviceInfoDriver.isPreview)"
        case .osVersion:
            "\(dependency.deviceInfoDriver.osType) \(dependency.deviceInfoDriver.osVersion)"
        case .timezone:
            dependency.deviceInfoDriver.timezone
        case .language:
            dependency.deviceInfoDriver.language
        }
    }
}

private extension BuildScheme {
    var name: String {
        "\(self)".camelCaseToSpaces.localizedCapitalized
    }
}

private extension BuildConfiguration {
    var name: String {
        "\(self)".camelCaseToSpaces.localizedCapitalized
    }
}
