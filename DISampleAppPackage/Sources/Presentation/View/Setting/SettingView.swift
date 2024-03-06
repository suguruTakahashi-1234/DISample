
import DomainLayer
import SwiftUI

@MainActor
public struct SettingView<Router: AppRootWireframe, Dependency: SettingPresenterDependency>: View {
    private let router: Router
    @StateObject private var presenter: SettingPresenter<Dependency>

    public init(router: Router, dependency: Dependency) {
        self.router = router
        _presenter = .init(wrappedValue: SettingPresenter(dependency: dependency))
    }

    public var body: some View {
        NavigationStack {
            List {
                Section {
                    NavigationLink {
                        router.createLicenseListView()
                    } label: {
                        Label(
                            title: { Text("ライセンス") },
                            icon: { Image(systemName: "licenseplate") }
                        )
                    }

                    NavigationLink {
                        router.createDeviceInfoView()
                    } label: {
                        Label(
                            title: { Text("デバイス情報") },
                            icon: { Image(systemName: "iphone.gen3") }
                        )
                    }
                }
            }
            .navigationTitle("設定")
        }
        .task {
            await presenter.onAppear()
        }
        .onDisappear {
            presenter.onDisappear()
        }
    }
}

// MARK: - Preview

import PreviewSnapshots

struct SettingView_Previews: PreviewProvider, SnapshotTestable {
    static var previews: some View {
        snapshots.previews.previewLayout(.sizeThatFits)
    }

    static var snapshots: PreviewSnapshots<AppRootRouterDependencyMock> {
        .init(
            configurations: configurationAllSizesWithEmpty,
            configure: { state in
                SettingView(router: AppRootRouter.empty, dependency: state)
            }
        )
    }
}