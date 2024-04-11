
English | [日本語](README.md)

# FITA Sample App

This is a sample iOS App that adopts the [Framework-Independent Testable Architecture (FITA)](#framework-independent-testable-architecture-fita).

#### Repository About
[![GitHub license](https://img.shields.io/github/license/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/blob/main/LICENSE.md)
[![GitHub Repo stars](https://img.shields.io/github/stars/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/stargazers)
[![GitHub watchers](https://img.shields.io/github/watchers/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/watchers)
[![GitHub forks](https://img.shields.io/github/forks/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/network/members)
[![GitHub contributors](https://img.shields.io/github/contributors/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/graphs/contributors)
[![Github Created At](https://img.shields.io/github/created-at/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/releases)
[![GitHub top language](https://img.shields.io/github/languages/top/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample)
[![GitHub repo size](https://img.shields.io/github/repo-size/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample)

#### Issue & PR

[![GitHub issues](https://img.shields.io/github/issues-raw/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/issues)
[![GitHub pull requests](https://img.shields.io/github/issues-pr-raw/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/pulls)
[![GitHub closed issues](https://img.shields.io/github/issues-closed-raw/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/issues?q=is%3Aissue+is%3Aclosed)
[![GitHub closed pull requests](https://img.shields.io/github/issues-pr-closed-raw/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/pulls?q=is%3Apr+is%3Aclosed)

#### Release & Tag

[![GitHub Tag](https://img.shields.io/github/v/tag/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/tags)
[![GitHub release (latest by date)](https://img.shields.io/github/v/release/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/releases)
[![GitHub Release Date](https://img.shields.io/github/release-date/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/releases)
[![GitHub commits since latest release](https://img.shields.io/github/commits-since/suguruTakahashi-1234/DISample/latest)](https://github.com/suguruTakahashi-1234/DISample)

#### Commit Activity

[![GitHub last commit](https://img.shields.io/github/last-commit/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/commits)
[![GitHub commit activity (Week)](https://img.shields.io/github/commit-activity/w/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample)
[![GitHub commit activity (Month)](https://img.shields.io/github/commit-activity/m/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample)
[![GitHub commit activity (Year)](https://img.shields.io/github/commit-activity/y/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample)
[![GitHub commit activity (Total)](https://img.shields.io/github/commit-activity/t/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/commits)

#### Workflow Status

[![GitHub Actions Workflow Status (tag_and_release_note_gen.yml)](https://img.shields.io/github/actions/workflow/status/suguruTakahashi-1234/DISample/tag_and_release_note_gen.yml)](https://github.com/suguruTakahashi-1234/DISample/actions/workflows/tag_and_release_note_gen.yml)
[![GitHub Actions Workflow Status (swift_docc_hosting.yml)](https://img.shields.io/github/actions/workflow/status/suguruTakahashi-1234/DISample/swift_docc_hosting.yml)](https://github.com/suguruTakahashi-1234/DISample/actions/workflows/swift_docc_hosting.yml)

## Development

### Requirement

![macOS](https://img.shields.io/badge/macOS-14.4.1+-brightgreen?logo=macos)
![Xcode](https://img.shields.io/badge/Xcode-15.3-brightgreen?logo=xcode)
![Swift](https://img.shields.io/badge/Swift-5.10-brightgreen?logo=swift)
![npm](https://img.shields.io/badge/npm-10.5.0+-brightgreen?logo=npm)

- macOS
  - 14.4.1 or Later
- Xcode
  - 15.3 or Later, with Swift 5.10
  - Download from [Xcode Releases](https://xcodereleases.com)
- npm
  - 10.5.1 or Later
  - Install using your preferred method, e.g., [nodebrew](https://github.com/hokaccha/nodebrew)
  - Used to run npx [mermaid-cli](https://github.com/mermaid-js/mermaid-cli)

### Supported Platform

![Supported Platform (iOS)](https://img.shields.io/badge/iOS-17.4+-brightgreen)
![Supported Platform (iPad)](https://img.shields.io/badge/iPadOS-17.4+-brightgreen)

- iOS
  - 17.4 or Later
- iPadOS
  - 17.4 or Later

### Supported Language

- Japanese (default)
- English

## Getting Started

#### Clone Repository

```shell
$ git clone https://github.com/suguruTakahashi-1234/DISample.git
$ cd DISample
```

#### Setup

Running `make setup` command will apply the [Mint](https://github.com/yonaskolb/Mint) and [githooks](https://git-scm.com/docs/githooks) settings, then open `.xcworkspace` and start Xcode.

```shell
$ make setup
```

The process being executed by `make setup` is described in the [Makefile](Makefile), and `make help` will give you a list of make commands.

## Architecture

This is a sample application that adopts the [Framework-Independent Testable Architecture (FITA)](#framework-independent-testable-architecture-fita).

### Framework-Independent Testable Architecture (FITA)

The Framework-Independent Testable Architecture (FITA) is designed to create a clear separation of concerns among the components of a software application. This is achieved by organizing the code into distinct layers with specific roles:

- **Development and Production App Layer**: These are the entry points for the application in development and production environments, respectively. They utilize Dependency Injection (DI) to manage dependencies.
- **Presentation Layer**: It holds the views and the user interface logic, connecting the UI with the application logic through routers and presenters.
- **Domain Layer**: This central layer contains the business logic, represented by UseCases and Entities, which are the core functionalities and data models of the application.
- **Framework Layer**: Includes abstractions over the external framework components the application relies on, allowing for the decoupling from any specific framework.
- **Third Party Layer**: Encompasses libraries and tools from third-party sources that the application depends on.
- **DI Layer**: Serves as a bridge for dependency injection, providing the necessary dependencies to different parts of the application.

In FITA, each layer is independent and interchangeable, which enables testing each part in isolation from the frameworks and external dependencies.

![](./asset/drawio/architecture.drawio.svg)

### Advantages and Disadvantages of FITA

This section discusses the pros and cons of adopting FITA in software development.

#### Advantages

- Testability: Due to the clear separation of concerns and decoupling from frameworks, units of code can be tested independently, which facilitates comprehensive unit testing and TDD (Test-Driven Development).
- Maintainability: Changes in one layer typically do not affect others, making the codebase easier to maintain and evolve.
- Flexibility: Framework-independent design allows for easier migration to different frameworks or technologies as needs change or new technologies emerge.
- Scalability: Each layer can be scaled independently, allowing for targeted optimizations.

#### Disadvantages

- Complexity: The architecture might introduce additional complexity with multiple layers and abstractions, which could be an overkill for simpler applications.
- Learning Curve: Developers might require time to get accustomed to the architecture and understand how layers interact.
- Development Time: It might take longer to set up and develop applications due to the need for defining interfaces and dependency injection mechanisms across layers.

### Swift Package Manager Dependencies Diagrams

By executing the following make command, Mermaid files for Swift Package Manager dependencies will be generated (by [depermaid](https://github.com/daikimat/depermaid), [mermaid-cli](https://github.com/mermaid-js/mermaid-cli)).

```shell
$ make spm-dependencies-mermaid-gen
```

#### My Targets

![My Targets Diagram](./asset/image/my_targets.svg)

#### Including Test Targets

![Including Test Targets](./asset/image/test_targets.svg)

#### Including Library

![Including Library](./asset/image/library_targets.svg)

#### Including All

![Including All](./asset/image/all_targets.svg)

## CI/CD

### Xcode Cloud

Please check Xcode Cloud settings via Xcode or [App Store Connect](https://appstoreconnect.apple.com/).

Currently, Xcode Cloud configuration supports only GUI operations, and configuration files cannot be exported or managed via GitHub.

### GitHub Actions

- [Host Swift-DocC](https://github.com/suguruTakahashi-1234/DISample/actions/workflows/swift_docc_hosting.yml)
- [Generate Tag & Release Note](https://github.com/suguruTakahashi-1234/DISample/actions/workflows/tag_and_release_note_gen.yml)

## Documents

- [Swift-DocC](https://sugurutakahashi-1234.github.io/DISample/documentation/domainlayer/) (Only DomainLayer)

## Contributing

[![GitHub contributors](https://img.shields.io/github/contributors/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/graphs/contributors)

Thank you for your interest in contributing! 🌟

Please check out our [CONTRIBUTING](CONTRIBUTING.md) and [CODE_OF_CONDUCT](CODE_OF_CONDUCT.md) for guidelines on how to contribute.

## License

[![GitHub license](https://img.shields.io/github/license/suguruTakahashi-1234/DISample)](https://github.com/suguruTakahashi-1234/DISample/blob/main/LICENSE.md)

See the [LICENSE](LICENSE.md) file for license rights and limitations (MIT).

## Contact

[![X URL](https://img.shields.io/twitter/url?url=https%3A%2F%2Ftwitter.com%2Fikuraikuraaaaaa)](https://twitter.com/ikuraikuraaaaaa)