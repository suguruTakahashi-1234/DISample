///
/// @Generated by Mockolo
///



import Combine
import DomainLayer
import Foundation
import SwiftUI


public final class AppRootRouterDependencyMock: AppRootRouterDependency {
    public init() { }
    public init(cacheDataStore: CacheDataStoreProtocolAT, localDataStore: LocalDataStoreProtocolAT, logDriver: LogDriverProtocolAT, libraryLicenseDriver: LibraryLicenseDriverProtocolAT, buildEnvDriver: BuildEnvDriverProtocolAT, clipboardDriver: ClipboardDriverProtocolAT, deviceInfoDriver: DeviceInfoDriverProtocolAT) {
        self._cacheDataStore = cacheDataStore
        self._localDataStore = localDataStore
        self._logDriver = logDriver
        self._libraryLicenseDriver = libraryLicenseDriver
        self._buildEnvDriver = buildEnvDriver
        self._clipboardDriver = clipboardDriver
        self._deviceInfoDriver = deviceInfoDriver
    }

    public typealias CacheDataStoreProtocolAT = CacheDataStoreProtocolMock
    public typealias LocalDataStoreProtocolAT = LocalDataStore
    public typealias LogDriverProtocolAT = LogDriver<LogDriverDependencyMock>

    public private(set) var cacheDataStoreSetCallCount = 0
    private var _cacheDataStore: CacheDataStoreProtocolAT!  { didSet { cacheDataStoreSetCallCount += 1 } }
    public var cacheDataStore: CacheDataStoreProtocolAT {
        get { return _cacheDataStore }
        set { _cacheDataStore = newValue }
    }

    public private(set) var localDataStoreSetCallCount = 0
    private var _localDataStore: LocalDataStoreProtocolAT!  { didSet { localDataStoreSetCallCount += 1 } }
    public var localDataStore: LocalDataStoreProtocolAT {
        get { return _localDataStore }
        set { _localDataStore = newValue }
    }

    public private(set) var logDriverSetCallCount = 0
    private var _logDriver: LogDriverProtocolAT!  { didSet { logDriverSetCallCount += 1 } }
    public var logDriver: LogDriverProtocolAT {
        get { return _logDriver }
        set { _logDriver = newValue }
    }
    public typealias LibraryLicenseDriverProtocolAT = LibraryLicenseDriverProtocolMock
    public typealias BuildEnvDriverProtocolAT = BuildEnvDriverProtocolMock

    public private(set) var libraryLicenseDriverSetCallCount = 0
    private var _libraryLicenseDriver: LibraryLicenseDriverProtocolAT!  { didSet { libraryLicenseDriverSetCallCount += 1 } }
    public var libraryLicenseDriver: LibraryLicenseDriverProtocolAT {
        get { return _libraryLicenseDriver }
        set { _libraryLicenseDriver = newValue }
    }
    public typealias DeviceInfoDriverProtocolAT = DeviceInfoDriver<DeviceNameDriverProtocolMock>
    public typealias ClipboardDriverProtocolAT = ClipboardDriver

    public private(set) var buildEnvDriverSetCallCount = 0
    private var _buildEnvDriver: BuildEnvDriverProtocolAT!  { didSet { buildEnvDriverSetCallCount += 1 } }
    public var buildEnvDriver: BuildEnvDriverProtocolAT {
        get { return _buildEnvDriver }
        set { _buildEnvDriver = newValue }
    }

    public private(set) var clipboardDriverSetCallCount = 0
    private var _clipboardDriver: ClipboardDriverProtocolAT!  { didSet { clipboardDriverSetCallCount += 1 } }
    public var clipboardDriver: ClipboardDriverProtocolAT {
        get { return _clipboardDriver }
        set { _clipboardDriver = newValue }
    }

    public private(set) var deviceInfoDriverSetCallCount = 0
    private var _deviceInfoDriver: DeviceInfoDriverProtocolAT!  { didSet { deviceInfoDriverSetCallCount += 1 } }
    public var deviceInfoDriver: DeviceInfoDriverProtocolAT {
        get { return _deviceInfoDriver }
        set { _deviceInfoDriver = newValue }
    }
}

public final class DebugMenuPresenterDependencyMock: DebugMenuPresenterDependency {
    public init() { }
    public init(localDataStore: LocalDataStoreProtocolAT, logDriver: LogDriverProtocolAT) {
        self._localDataStore = localDataStore
        self._logDriver = logDriver
    }

    public typealias LocalDataStoreProtocolAT = LocalDataStore
    public typealias LogDriverProtocolAT = LogDriver<LogDriverDependencyMock>

    public private(set) var localDataStoreSetCallCount = 0
    private var _localDataStore: LocalDataStoreProtocolAT!  { didSet { localDataStoreSetCallCount += 1 } }
    public var localDataStore: LocalDataStoreProtocolAT {
        get { return _localDataStore }
        set { _localDataStore = newValue }
    }

    public private(set) var logDriverSetCallCount = 0
    private var _logDriver: LogDriverProtocolAT!  { didSet { logDriverSetCallCount += 1 } }
    public var logDriver: LogDriverProtocolAT {
        get { return _logDriver }
        set { _logDriver = newValue }
    }
}

public final class DeviceInfoPresenterDependencyMock: DeviceInfoPresenterDependency {
    public init() { }
    public init(localDataStore: LocalDataStoreProtocolAT, logDriver: LogDriverProtocolAT, buildEnvDriver: BuildEnvDriverProtocolAT, clipboardDriver: ClipboardDriverProtocolAT, deviceInfoDriver: DeviceInfoDriverProtocolAT) {
        self._localDataStore = localDataStore
        self._logDriver = logDriver
        self._buildEnvDriver = buildEnvDriver
        self._clipboardDriver = clipboardDriver
        self._deviceInfoDriver = deviceInfoDriver
    }

    public typealias LocalDataStoreProtocolAT = LocalDataStore
    public typealias LogDriverProtocolAT = LogDriver<LogDriverDependencyMock>

    public private(set) var localDataStoreSetCallCount = 0
    private var _localDataStore: LocalDataStoreProtocolAT!  { didSet { localDataStoreSetCallCount += 1 } }
    public var localDataStore: LocalDataStoreProtocolAT {
        get { return _localDataStore }
        set { _localDataStore = newValue }
    }

    public private(set) var logDriverSetCallCount = 0
    private var _logDriver: LogDriverProtocolAT!  { didSet { logDriverSetCallCount += 1 } }
    public var logDriver: LogDriverProtocolAT {
        get { return _logDriver }
        set { _logDriver = newValue }
    }
    public typealias BuildEnvDriverProtocolAT = BuildEnvDriverProtocolMock
    public typealias DeviceInfoDriverProtocolAT = DeviceInfoDriver<DeviceNameDriverProtocolMock>
    public typealias ClipboardDriverProtocolAT = ClipboardDriver

    public private(set) var buildEnvDriverSetCallCount = 0
    private var _buildEnvDriver: BuildEnvDriverProtocolAT!  { didSet { buildEnvDriverSetCallCount += 1 } }
    public var buildEnvDriver: BuildEnvDriverProtocolAT {
        get { return _buildEnvDriver }
        set { _buildEnvDriver = newValue }
    }

    public private(set) var clipboardDriverSetCallCount = 0
    private var _clipboardDriver: ClipboardDriverProtocolAT!  { didSet { clipboardDriverSetCallCount += 1 } }
    public var clipboardDriver: ClipboardDriverProtocolAT {
        get { return _clipboardDriver }
        set { _clipboardDriver = newValue }
    }

    public private(set) var deviceInfoDriverSetCallCount = 0
    private var _deviceInfoDriver: DeviceInfoDriverProtocolAT!  { didSet { deviceInfoDriverSetCallCount += 1 } }
    public var deviceInfoDriver: DeviceInfoDriverProtocolAT {
        get { return _deviceInfoDriver }
        set { _deviceInfoDriver = newValue }
    }
}

public final class HomeTabPresenterDependencyMock: HomeTabPresenterDependency {
    public init() { }
    public init(logDriver: LogDriverProtocolAT) {
        self._logDriver = logDriver
    }

    public typealias LogDriverProtocolAT = LogDriver<LogDriverDependencyMock>

    public private(set) var logDriverSetCallCount = 0
    private var _logDriver: LogDriverProtocolAT!  { didSet { logDriverSetCallCount += 1 } }
    public var logDriver: LogDriverProtocolAT {
        get { return _logDriver }
        set { _logDriver = newValue }
    }
}

public final class OnboardingPresenterDependencyMock: OnboardingPresenterDependency {
    public init() { }
    public init(localDataStore: LocalDataStoreProtocolAT, logDriver: LogDriverProtocolAT) {
        self._localDataStore = localDataStore
        self._logDriver = logDriver
    }

    public typealias LocalDataStoreProtocolAT = LocalDataStore
    public typealias LogDriverProtocolAT = LogDriver<LogDriverDependencyMock>

    public private(set) var localDataStoreSetCallCount = 0
    private var _localDataStore: LocalDataStoreProtocolAT!  { didSet { localDataStoreSetCallCount += 1 } }
    public var localDataStore: LocalDataStoreProtocolAT {
        get { return _localDataStore }
        set { _localDataStore = newValue }
    }

    public private(set) var logDriverSetCallCount = 0
    private var _logDriver: LogDriverProtocolAT!  { didSet { logDriverSetCallCount += 1 } }
    public var logDriver: LogDriverProtocolAT {
        get { return _logDriver }
        set { _logDriver = newValue }
    }
}

public final class SettingPresenterDependencyMock: SettingPresenterDependency {
    public init() { }
    public init(logDriver: LogDriverProtocolAT) {
        self._logDriver = logDriver
    }

    public typealias LogDriverProtocolAT = LogDriver<LogDriverDependencyMock>

    public private(set) var logDriverSetCallCount = 0
    private var _logDriver: LogDriverProtocolAT!  { didSet { logDriverSetCallCount += 1 } }
    public var logDriver: LogDriverProtocolAT {
        get { return _logDriver }
        set { _logDriver = newValue }
    }
}

public final class TaskListPresenterDependencyMock: TaskListPresenterDependency {
    public init() { }
    public init(cacheDataStore: CacheDataStoreProtocolAT, logDriver: LogDriverProtocolAT) {
        self._cacheDataStore = cacheDataStore
        self._logDriver = logDriver
    }

    public typealias CacheDataStoreProtocolAT = CacheDataStoreProtocolMock
    public typealias LogDriverProtocolAT = LogDriver<LogDriverDependencyMock>

    public private(set) var cacheDataStoreSetCallCount = 0
    private var _cacheDataStore: CacheDataStoreProtocolAT!  { didSet { cacheDataStoreSetCallCount += 1 } }
    public var cacheDataStore: CacheDataStoreProtocolAT {
        get { return _cacheDataStore }
        set { _cacheDataStore = newValue }
    }

    public private(set) var logDriverSetCallCount = 0
    private var _logDriver: LogDriverProtocolAT!  { didSet { logDriverSetCallCount += 1 } }
    public var logDriver: LogDriverProtocolAT {
        get { return _logDriver }
        set { _logDriver = newValue }
    }
}

public final class CacheDataStoreProtocolMock: CacheDataStoreProtocol {
    public init() { }
    public init(remoteConfigUpdateErrorSubjecter: PassthroughSubject<AppError, Never>, appInfoSubjecter: CurrentValueSubject<AppInfo, Never>, variantTestSubjecter: CurrentValueSubject<VariantTest, Never>) {
        self._remoteConfigUpdateErrorSubjecter = remoteConfigUpdateErrorSubjecter
        self._appInfoSubjecter = appInfoSubjecter
        self._variantTestSubjecter = variantTestSubjecter
    }


    public private(set) var remoteConfigUpdateErrorSubjecterSetCallCount = 0
    private var _remoteConfigUpdateErrorSubjecter: PassthroughSubject<AppError, Never>!  { didSet { remoteConfigUpdateErrorSubjecterSetCallCount += 1 } }
    public var remoteConfigUpdateErrorSubjecter: PassthroughSubject<AppError, Never> {
        get { return _remoteConfigUpdateErrorSubjecter }
        set { _remoteConfigUpdateErrorSubjecter = newValue }
    }

    public private(set) var appInfoSubjecterSetCallCount = 0
    private var _appInfoSubjecter: CurrentValueSubject<AppInfo, Never>!  { didSet { appInfoSubjecterSetCallCount += 1 } }
    public var appInfoSubjecter: CurrentValueSubject<AppInfo, Never> {
        get { return _appInfoSubjecter }
        set { _appInfoSubjecter = newValue }
    }

    public private(set) var variantTestSubjecterSetCallCount = 0
    private var _variantTestSubjecter: CurrentValueSubject<VariantTest, Never>!  { didSet { variantTestSubjecterSetCallCount += 1 } }
    public var variantTestSubjecter: CurrentValueSubject<VariantTest, Never> {
        get { return _variantTestSubjecter }
        set { _variantTestSubjecter = newValue }
    }
}

public final class BuildEnvDriverProtocolMock: BuildEnvDriverProtocol {
    public init() { }
    public init(buildScheme: BuildScheme, buildConfiguration: BuildConfiguration) {
        self._buildScheme = buildScheme
        self._buildConfiguration = buildConfiguration
    }


    public private(set) var buildSchemeSetCallCount = 0
    private var _buildScheme: BuildScheme!  { didSet { buildSchemeSetCallCount += 1 } }
    public var buildScheme: BuildScheme {
        get { return _buildScheme }
        set { _buildScheme = newValue }
    }

    public private(set) var buildConfigurationSetCallCount = 0
    private var _buildConfiguration: BuildConfiguration!  { didSet { buildConfigurationSetCallCount += 1 } }
    public var buildConfiguration: BuildConfiguration {
        get { return _buildConfiguration }
        set { _buildConfiguration = newValue }
    }
}

public final class ClipboardDriverProtocolMock: ClipboardDriverProtocol {
    public init() { }
    public init(copiedValue: String? = nil) {
        self.copiedValue = copiedValue
    }


    public private(set) var copiedValueSetCallCount = 0
    public var copiedValue: String? = nil { didSet { copiedValueSetCallCount += 1 } }

    public private(set) var copyCallCount = 0
    public var copyHandler: ((String) -> ())?
    public func copy(_ string: String)  {
        copyCallCount += 1
        if let copyHandler = copyHandler {
            copyHandler(string)
        }
        
    }
}

public final class DeviceInfoUseCaseDependencyMock: DeviceInfoUseCaseDependency {
    public init() { }
    public init(localDataStore: LocalDataStoreProtocolAT, logDriver: LogDriverProtocolAT, buildEnvDriver: BuildEnvDriverProtocolAT, deviceInfoDriver: DeviceInfoDriverProtocolAT) {
        self._localDataStore = localDataStore
        self._logDriver = logDriver
        self._buildEnvDriver = buildEnvDriver
        self._deviceInfoDriver = deviceInfoDriver
    }

    public typealias LocalDataStoreProtocolAT = LocalDataStore
    public typealias LogDriverProtocolAT = LogDriver<LogDriverDependencyMock>

    public private(set) var localDataStoreSetCallCount = 0
    private var _localDataStore: LocalDataStoreProtocolAT!  { didSet { localDataStoreSetCallCount += 1 } }
    public var localDataStore: LocalDataStoreProtocolAT {
        get { return _localDataStore }
        set { _localDataStore = newValue }
    }

    public private(set) var logDriverSetCallCount = 0
    private var _logDriver: LogDriverProtocolAT!  { didSet { logDriverSetCallCount += 1 } }
    public var logDriver: LogDriverProtocolAT {
        get { return _logDriver }
        set { _logDriver = newValue }
    }
    public typealias BuildEnvDriverProtocolAT = BuildEnvDriverProtocolMock
    public typealias DeviceInfoDriverProtocolAT = DeviceInfoDriver<DeviceNameDriverProtocolMock>

    public private(set) var buildEnvDriverSetCallCount = 0
    private var _buildEnvDriver: BuildEnvDriverProtocolAT!  { didSet { buildEnvDriverSetCallCount += 1 } }
    public var buildEnvDriver: BuildEnvDriverProtocolAT {
        get { return _buildEnvDriver }
        set { _buildEnvDriver = newValue }
    }

    public private(set) var deviceInfoDriverSetCallCount = 0
    private var _deviceInfoDriver: DeviceInfoDriverProtocolAT!  { didSet { deviceInfoDriverSetCallCount += 1 } }
    public var deviceInfoDriver: DeviceInfoDriverProtocolAT {
        get { return _deviceInfoDriver }
        set { _deviceInfoDriver = newValue }
    }
}

public final class DeviceInfoUseCaseMock: DeviceInfoUseCase {
    public init() { }


    public private(set) var getDeviceInfoValueCallCount = 0
    public var getDeviceInfoValueHandler: ((DeviceInfoType) -> (String))?
    public func getDeviceInfoValue(_ deviceInfoType: DeviceInfoType) -> String {
        getDeviceInfoValueCallCount += 1
        if let getDeviceInfoValueHandler = getDeviceInfoValueHandler {
            return getDeviceInfoValueHandler(deviceInfoType)
        }
        return ""
    }
}

public final class DeviceNameDriverProtocolMock: DeviceNameDriverProtocol {
    public init() { }
    public init(deviceName: String = "") {
        self.deviceName = deviceName
    }


    public private(set) var deviceNameSetCallCount = 0
    public var deviceName: String = "" { didSet { deviceNameSetCallCount += 1 } }
}

public final class FirebaseAnalyticsLogDriverProtocolMock: FirebaseAnalyticsLogDriverProtocol {
    public init() { }


    public private(set) var logCallCount = 0
    public var logHandler: ((LogEventType, LogLevel, String, String, Int) -> ())?
    public func log(_ _arg: LogEventType, level: LogLevel, file: String, function: String, line: Int)  {
        logCallCount += 1
        if let logHandler = logHandler {
            logHandler(_arg, level, file, function, line)
        }
        
    }
}

public final class FirebaseCrashlyticsLogDriverProtocolMock: FirebaseCrashlyticsLogDriverProtocol {
    public init() { }


    public private(set) var logCallCount = 0
    public var logHandler: ((LogEventType, LogLevel, String, String, Int) -> ())?
    public func log(_ _arg: LogEventType, level: LogLevel, file: String, function: String, line: Int)  {
        logCallCount += 1
        if let logHandler = logHandler {
            logHandler(_arg, level, file, function, line)
        }
        
    }

    public private(set) var identifyUserCallCount = 0
    public var identifyUserHandler: ((String) -> ())?
    public func identifyUser(userId: String)  {
        identifyUserCallCount += 1
        if let identifyUserHandler = identifyUserHandler {
            identifyUserHandler(userId)
        }
        
    }

    public private(set) var clearUserCallCount = 0
    public var clearUserHandler: (() -> ())?
    public func clearUser()  {
        clearUserCallCount += 1
        if let clearUserHandler = clearUserHandler {
            clearUserHandler()
        }
        
    }
}

public final class FirebaseRemoteConfigDriverProtocolMock: FirebaseRemoteConfigDriverProtocol {
    public init() { }


    public private(set) var setUpCallCount = 0
    public var setUpHandler: (() async throws -> ())?
    public func setUp() async throws  {
        setUpCallCount += 1
        if let setUpHandler = setUpHandler {
            try await setUpHandler()
        }
        
    }
}

public final class FirebaseSetupDriverProtocolMock: FirebaseSetupDriverProtocol {
    public init() { }


    public private(set) var configureCallCount = 0
    public var configureHandler: (() -> ())?
    public func configure()  {
        configureCallCount += 1
        if let configureHandler = configureHandler {
            configureHandler()
        }
        
    }
}

public final class LibraryLicenseDriverProtocolMock: LibraryLicenseDriverProtocol {
    public init() { }
    public init(licenseList: [License] = [License]()) {
        self.licenseList = licenseList
    }


    public private(set) var licenseListSetCallCount = 0
    public var licenseList: [License] = [License]() { didSet { licenseListSetCallCount += 1 } }
}

public final class LocalDataStoreProviderMock: LocalDataStoreProvider {
    public init() { }
    public init(localDataStore: LocalDataStoreProtocolAT) {
        self._localDataStore = localDataStore
    }

    public typealias LocalDataStoreProtocolAT = LocalDataStore

    public private(set) var localDataStoreSetCallCount = 0
    private var _localDataStore: LocalDataStoreProtocolAT!  { didSet { localDataStoreSetCallCount += 1 } }
    public var localDataStore: LocalDataStoreProtocolAT {
        get { return _localDataStore }
        set { _localDataStore = newValue }
    }
}

public final class LogDriverDependencyMock: LogDriverDependency {
    public init() { }
    public init(osLogDriver: OSLogDriverProtocolAT, firebaseAnalyticsLogDriver: FirebaseAnalyticsLogDriverProtocolAT, firebaseCrashlyticsLogDriver: FirebaseCrashlyticsLogDriverProtocolAT) {
        self._osLogDriver = osLogDriver
        self._firebaseAnalyticsLogDriver = firebaseAnalyticsLogDriver
        self._firebaseCrashlyticsLogDriver = firebaseCrashlyticsLogDriver
    }

    public typealias OSLogDriverProtocolAT = OSLogDriver
    public typealias FirebaseAnalyticsLogDriverProtocolAT = FirebaseAnalyticsLogDriverProtocolMock
    public typealias FirebaseCrashlyticsLogDriverProtocolAT = FirebaseCrashlyticsLogDriverProtocolMock

    public private(set) var osLogDriverSetCallCount = 0
    private var _osLogDriver: OSLogDriverProtocolAT!  { didSet { osLogDriverSetCallCount += 1 } }
    public var osLogDriver: OSLogDriverProtocolAT {
        get { return _osLogDriver }
        set { _osLogDriver = newValue }
    }

    public private(set) var firebaseAnalyticsLogDriverSetCallCount = 0
    private var _firebaseAnalyticsLogDriver: FirebaseAnalyticsLogDriverProtocolAT!  { didSet { firebaseAnalyticsLogDriverSetCallCount += 1 } }
    public var firebaseAnalyticsLogDriver: FirebaseAnalyticsLogDriverProtocolAT {
        get { return _firebaseAnalyticsLogDriver }
        set { _firebaseAnalyticsLogDriver = newValue }
    }

    public private(set) var firebaseCrashlyticsLogDriverSetCallCount = 0
    private var _firebaseCrashlyticsLogDriver: FirebaseCrashlyticsLogDriverProtocolAT!  { didSet { firebaseCrashlyticsLogDriverSetCallCount += 1 } }
    public var firebaseCrashlyticsLogDriver: FirebaseCrashlyticsLogDriverProtocolAT {
        get { return _firebaseCrashlyticsLogDriver }
        set { _firebaseCrashlyticsLogDriver = newValue }
    }
}

public final class LogDriverProtocolMock: LogDriverProtocol {
    public init() { }


    public private(set) var logCallCount = 0
    public var logHandler: ((LogEventType, LogLevel, String, String, Int) -> ())?
    public func log(_ _arg: LogEventType, level: LogLevel, file: String, function: String, line: Int)  {
        logCallCount += 1
        if let logHandler = logHandler {
            logHandler(_arg, level, file, function, line)
        }
        
    }
}

public final class LogDriverProviderMock: LogDriverProvider {
    public init() { }
    public init(logDriver: LogDriverProtocolAT) {
        self._logDriver = logDriver
    }

    public typealias LogDriverProtocolAT = LogDriver<LogDriverDependencyMock>

    public private(set) var logDriverSetCallCount = 0
    private var _logDriver: LogDriverProtocolAT!  { didSet { logDriverSetCallCount += 1 } }
    public var logDriver: LogDriverProtocolAT {
        get { return _logDriver }
        set { _logDriver = newValue }
    }
}

public final class LocalDataStoreProtocolMock: LocalDataStoreProtocol {
    public init() { }
    public init(launchAppCount: Int = 0, isCompletedOnboarding: Bool = false, apnsToken: Data? = nil) {
        self.launchAppCount = launchAppCount
        self.isCompletedOnboarding = isCompletedOnboarding
        self.apnsToken = apnsToken
    }


    public var isCompletedOnboardingPublisher: AnyPublisher<Bool, Never> { return self.isCompletedOnboardingPublisherSubject.eraseToAnyPublisher() }
    public private(set) var isCompletedOnboardingPublisherSubject = PassthroughSubject<Bool, Never>()

    public private(set) var launchAppCountSetCallCount = 0
    public var launchAppCount: Int = 0 { didSet { launchAppCountSetCallCount += 1 } }

    public private(set) var isCompletedOnboardingSetCallCount = 0
    public var isCompletedOnboarding: Bool = false { didSet { isCompletedOnboardingSetCallCount += 1 } }

    public private(set) var apnsTokenSetCallCount = 0
    public var apnsToken: Data? = nil { didSet { apnsTokenSetCallCount += 1 } }

    public private(set) var allClearCallCount = 0
    public var allClearHandler: (() -> ())?
    public func allClear()  {
        allClearCallCount += 1
        if let allClearHandler = allClearHandler {
            allClearHandler()
        }
        
    }
}

public final class AppRootPresenterDependencyMock: AppRootPresenterDependency {
    public init() { }
    public init(localDataStore: LocalDataStoreProtocolAT, logDriver: LogDriverProtocolAT) {
        self._localDataStore = localDataStore
        self._logDriver = logDriver
    }

    public typealias LocalDataStoreProtocolAT = LocalDataStore
    public typealias LogDriverProtocolAT = LogDriver<LogDriverDependencyMock>

    public private(set) var localDataStoreSetCallCount = 0
    private var _localDataStore: LocalDataStoreProtocolAT!  { didSet { localDataStoreSetCallCount += 1 } }
    public var localDataStore: LocalDataStoreProtocolAT {
        get { return _localDataStore }
        set { _localDataStore = newValue }
    }

    public private(set) var logDriverSetCallCount = 0
    private var _logDriver: LogDriverProtocolAT!  { didSet { logDriverSetCallCount += 1 } }
    public var logDriver: LogDriverProtocolAT {
        get { return _logDriver }
        set { _logDriver = newValue }
    }
}

public final class CommonPresenterDependencyMock: CommonPresenterDependency {
    public init() { }
    public init(logDriver: LogDriverProtocolAT) {
        self._logDriver = logDriver
    }

    public typealias LogDriverProtocolAT = LogDriver<LogDriverDependencyMock>

    public private(set) var logDriverSetCallCount = 0
    private var _logDriver: LogDriverProtocolAT!  { didSet { logDriverSetCallCount += 1 } }
    public var logDriver: LogDriverProtocolAT {
        get { return _logDriver }
        set { _logDriver = newValue }
    }
}

public final class LicenseDetailPresenterDependencyMock: LicenseDetailPresenterDependency {
    public init() { }
    public init(logDriver: LogDriverProtocolAT) {
        self._logDriver = logDriver
    }

    public typealias LogDriverProtocolAT = LogDriver<LogDriverDependencyMock>

    public private(set) var logDriverSetCallCount = 0
    private var _logDriver: LogDriverProtocolAT!  { didSet { logDriverSetCallCount += 1 } }
    public var logDriver: LogDriverProtocolAT {
        get { return _logDriver }
        set { _logDriver = newValue }
    }
}

public final class LicenseListPresenterDependencyMock: LicenseListPresenterDependency {
    public init() { }
    public init(logDriver: LogDriverProtocolAT, libraryLicenseDriver: LibraryLicenseDriverProtocolAT) {
        self._logDriver = logDriver
        self._libraryLicenseDriver = libraryLicenseDriver
    }

    public typealias LogDriverProtocolAT = LogDriver<LogDriverDependencyMock>

    public private(set) var logDriverSetCallCount = 0
    private var _logDriver: LogDriverProtocolAT!  { didSet { logDriverSetCallCount += 1 } }
    public var logDriver: LogDriverProtocolAT {
        get { return _logDriver }
        set { _logDriver = newValue }
    }
    public typealias LibraryLicenseDriverProtocolAT = LibraryLicenseDriverProtocolMock

    public private(set) var libraryLicenseDriverSetCallCount = 0
    private var _libraryLicenseDriver: LibraryLicenseDriverProtocolAT!  { didSet { libraryLicenseDriverSetCallCount += 1 } }
    public var libraryLicenseDriver: LibraryLicenseDriverProtocolAT {
        get { return _libraryLicenseDriver }
        set { _libraryLicenseDriver = newValue }
    }
}

public final class DeviceInfoDriverProtocolMock: DeviceInfoDriverProtocol {
    public init() { }
    public init(appVersion: String = "", appBuildNumber: String = "", bundleId: String = "", deviceName: String = "", deviceIdentifier: String = "", osType: String = "", osVersion: String = "", isSimulator: Bool = false, isPreview: Bool = false, timezone: String = "", preferredLanguages: String = "", language: String = "") {
        self.appVersion = appVersion
        self.appBuildNumber = appBuildNumber
        self.bundleId = bundleId
        self.deviceName = deviceName
        self.deviceIdentifier = deviceIdentifier
        self.osType = osType
        self.osVersion = osVersion
        self.isSimulator = isSimulator
        self.isPreview = isPreview
        self.timezone = timezone
        self.preferredLanguages = preferredLanguages
        self.language = language
    }


    public private(set) var appVersionSetCallCount = 0
    public var appVersion: String = "" { didSet { appVersionSetCallCount += 1 } }

    public private(set) var appBuildNumberSetCallCount = 0
    public var appBuildNumber: String = "" { didSet { appBuildNumberSetCallCount += 1 } }

    public private(set) var bundleIdSetCallCount = 0
    public var bundleId: String = "" { didSet { bundleIdSetCallCount += 1 } }

    public private(set) var deviceNameSetCallCount = 0
    public var deviceName: String = "" { didSet { deviceNameSetCallCount += 1 } }

    public private(set) var deviceIdentifierSetCallCount = 0
    public var deviceIdentifier: String = "" { didSet { deviceIdentifierSetCallCount += 1 } }

    public private(set) var osTypeSetCallCount = 0
    public var osType: String = "" { didSet { osTypeSetCallCount += 1 } }

    public private(set) var osVersionSetCallCount = 0
    public var osVersion: String = "" { didSet { osVersionSetCallCount += 1 } }

    public private(set) var isSimulatorSetCallCount = 0
    public var isSimulator: Bool = false { didSet { isSimulatorSetCallCount += 1 } }

    public private(set) var isPreviewSetCallCount = 0
    public var isPreview: Bool = false { didSet { isPreviewSetCallCount += 1 } }

    public private(set) var timezoneSetCallCount = 0
    public var timezone: String = "" { didSet { timezoneSetCallCount += 1 } }

    public private(set) var preferredLanguagesSetCallCount = 0
    public var preferredLanguages: String = "" { didSet { preferredLanguagesSetCallCount += 1 } }

    public private(set) var languageSetCallCount = 0
    public var language: String = "" { didSet { languageSetCallCount += 1 } }
}

