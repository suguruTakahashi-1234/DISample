//
//  Created by sugurutakahashi on 2024/02/15
//  Copyright © 2024 sugurutakahashi. All rights reserved.
//

import SwiftUI
import DISampleAppRootPresentation
import DILayer

@main
struct ProductionApp: App {
    private let router = AppRootRouter(dependency: RootDependencyInjector())
    
    var body: some Scene {
        WindowGroup {
            router.createAppRootView()
        }
    }
}
