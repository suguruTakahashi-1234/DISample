//
//  Created by sugurutakahashi on 2024/02/27
//  Copyright sugurutakahashi. All rights reserved.
//

import DomainLayer
import Foundation

@MainActor
final class SettingPresenter: ObservableObject {
    init(dependency _: some SettingPresenterDependency) {
        LoggerContainer.initLog()
    }

    deinit {
        LoggerContainer.deinitLog()
    }

    func onAppear() {
        LoggerContainer.logOnAppear()
    }

    func onDisappear() {
        LoggerContainer.logOnDisappear()
    }
}
