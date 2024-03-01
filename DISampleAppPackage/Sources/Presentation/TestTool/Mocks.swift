///
/// @Generated by Mockolo
///



import DomainLayer
import Foundation


public final class AppRootRouterDependencyMock: AppRootRouterDependency {
    public init() { }
    public init(libraryLicenseDriver: LibraryLicenseDriverProtocolAT, osLogDriver: OSLogDriverProtocolAT, firebaseSetupDriver: FirebaseSetupDriverProtocolAT) {
        self._libraryLicenseDriver = libraryLicenseDriver
        self._osLogDriver = osLogDriver
        self._firebaseSetupDriver = firebaseSetupDriver
    }

    public typealias LibraryLicenseDriverProtocolAT = LibraryLicenseDriverProtocolMock
    public typealias OSLogDriverProtocolAT = OSLogDriverProtocolMock

    public private(set) var libraryLicenseDriverSetCallCount = 0
    private var _libraryLicenseDriver: LibraryLicenseDriverProtocolAT!  { didSet { libraryLicenseDriverSetCallCount += 1 } }
    public var libraryLicenseDriver: LibraryLicenseDriverProtocolAT {
        get { return _libraryLicenseDriver }
        set { _libraryLicenseDriver = newValue }
    }
    public typealias FirebaseSetupDriverProtocolAT = FirebaseSetupDriverProtocolMock

    public private(set) var osLogDriverSetCallCount = 0
    private var _osLogDriver: OSLogDriverProtocolAT!  { didSet { osLogDriverSetCallCount += 1 } }
    public var osLogDriver: OSLogDriverProtocolAT {
        get { return _osLogDriver }
        set { _osLogDriver = newValue }
    }

    public private(set) var firebaseSetupDriverSetCallCount = 0
    private var _firebaseSetupDriver: FirebaseSetupDriverProtocolAT!  { didSet { firebaseSetupDriverSetCallCount += 1 } }
    public var firebaseSetupDriver: FirebaseSetupDriverProtocolAT {
        get { return _firebaseSetupDriver }
        set { _firebaseSetupDriver = newValue }
    }
}

public final class AppRootTabPresenterDependencyMock: AppRootTabPresenterDependency {
    public init() { }


}

public final class SettingPresenterDependencyMock: SettingPresenterDependency {
    public init() { }


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

public final class OSLogDriverProtocolMock: OSLogDriverProtocol {
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

public final class AppRootPresenterDependencyMock: AppRootPresenterDependency {
    public init() { }
    public init(osLogDriver: OSLogDriverProtocolAT, firebaseSetupDriver: FirebaseSetupDriverProtocolAT) {
        self._osLogDriver = osLogDriver
        self._firebaseSetupDriver = firebaseSetupDriver
    }

    public typealias OSLogDriverProtocolAT = OSLogDriverProtocolMock
    public typealias FirebaseSetupDriverProtocolAT = FirebaseSetupDriverProtocolMock

    public private(set) var osLogDriverSetCallCount = 0
    private var _osLogDriver: OSLogDriverProtocolAT!  { didSet { osLogDriverSetCallCount += 1 } }
    public var osLogDriver: OSLogDriverProtocolAT {
        get { return _osLogDriver }
        set { _osLogDriver = newValue }
    }

    public private(set) var firebaseSetupDriverSetCallCount = 0
    private var _firebaseSetupDriver: FirebaseSetupDriverProtocolAT!  { didSet { firebaseSetupDriverSetCallCount += 1 } }
    public var firebaseSetupDriver: FirebaseSetupDriverProtocolAT {
        get { return _firebaseSetupDriver }
        set { _firebaseSetupDriver = newValue }
    }
}

public final class LicenseListPresenterDependencyMock: LicenseListPresenterDependency {
    public init() { }
    public init(libraryLicenseDriver: LibraryLicenseDriverProtocolAT) {
        self._libraryLicenseDriver = libraryLicenseDriver
    }

    public typealias LibraryLicenseDriverProtocolAT = LibraryLicenseDriverProtocolMock

    public private(set) var libraryLicenseDriverSetCallCount = 0
    private var _libraryLicenseDriver: LibraryLicenseDriverProtocolAT!  { didSet { libraryLicenseDriverSetCallCount += 1 } }
    public var libraryLicenseDriver: LibraryLicenseDriverProtocolAT {
        get { return _libraryLicenseDriver }
        set { _libraryLicenseDriver = newValue }
    }
}

