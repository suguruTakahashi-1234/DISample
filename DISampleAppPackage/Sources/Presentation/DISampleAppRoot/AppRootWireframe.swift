//
//  Created by sugurutakahashi on 2024/02/16
//  Copyright sugurutakahashi. All rights reserved.
//

import Foundation
import LicensePresentation

public protocol AppRootWireframe {
    func createLicenseListView() -> LicenseListView
}
