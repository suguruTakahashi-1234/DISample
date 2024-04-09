
import DomainLayer
import SwiftUI

// MARK: - Entity

public enum OnboardingStep {
    case introduction
    case start
}

// MARK: - View

@MainActor
public struct OnboardingView<Dependency: AppRootRouterDependency>: View {
    private let router: AppRootRouter<Dependency>
    @State private var presenter: OnboardingPresenter<Dependency>

    /// Previews で検証できるように init の引数に tab を設定している（要検討）
    /// SwiftUI の TabView のタップは Binding による更新なので仕方のない側面もある
    public init(router: AppRootRouter<Dependency>, dependency: Dependency, onboardingStep: OnboardingStep = .introduction) {
        self.router = router
        presenter = OnboardingPresenter(dependency: dependency, onboardingStep: onboardingStep)
    }

    public var body: some View {
        VStack {
            TabView(selection: $presenter.selectedStep) {
                ForEach(OnboardingStep.allCases) { step in
                    Text("\(step.message)")
                        .tag(step)
                }
            }
            .tabViewStyle(.page)
            .indexViewStyle(.page(backgroundDisplayMode: .automatic))

            Spacer()

            Button {
                presenter.onTapNextStep()
            } label: {
                Text(presenter.selectedStep.buttonText)
            }
        }
        .navigationTitle(String(localized: "チュートリアル", bundle: .module))
        .task {
            await presenter.onAppear()
        }
        .onDisappear {
            presenter.onDisappear()
        }
    }
}

// MARK: - Extension

/// for TabView
extension OnboardingStep: Identifiable, CaseIterable {
    public var id: String {
        "\(self)"
    }
}

private extension OnboardingStep {
    var message: String {
        switch self {
        case .introduction:
            String(localized: "このサービスはxxxです", bundle: .module)
        case .start:
            String(localized: "サービスを開始します", bundle: .module)
        }
    }

    var buttonText: String {
        switch self {
        case .introduction:
            String(localized: "次へ", bundle: .module)
        case .start:
            String(localized: "始める", bundle: .module)
        }
    }
}

// MARK: - Preview

import PreviewSnapshots

struct OnboardingView_Previews: PreviewProvider, SnapshotTestable {
    static var snapshots: PreviewSnapshots<(AppRootRouterDependencyMock, OnboardingStep)> {
        .init(
            configurations: OnboardingStep.allCases.map { onboardingStep in .init(name: "\(onboardingStep)".initialUppercased, state: (.random, onboardingStep)) },
            configure: { dependency, onboardingStep in
                OnboardingView(router: AppRootRouter.empty, dependency: dependency, onboardingStep: onboardingStep)
                    .navigationStacked()
            }
        )
    }
}
