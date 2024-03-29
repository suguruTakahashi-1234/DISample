//
//  Created by sugurutakahashi on 2024/03/09
//  Copyright sugurutakahashi. All rights reserved.
//

import XCTest

final class StagingUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUpWithError() throws {
        continueAfterFailure = false
        app = XCUIApplication()
        app.launch()

        // "次へのボタンが存在する場合はチュートリアル画面のためスキップ処理を入れる"
        if app.buttons["次へ"].exists {
            app.buttons["次へ"].tap()
            app.buttons["始める"].tap()
        }
    }

    func testTaskListView() throws {
        app.tabBars["タブバー"].buttons["タスク"].tap()
    }

    func testSettingView() throws {
        app.tabBars["タブバー"].buttons["設定"].tap()
    }

    func testLicenseListView() throws {
        app.tabBars["タブバー"].buttons["設定"].tap()
        app.collectionViews/*@START_MENU_TOKEN@*/ .staticTexts["ライセンス"]/*[[".cells",".buttons[\"ライセンス\"].staticTexts[\"ライセンス\"]",".staticTexts[\"ライセンス\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/ .tap()
        app.navigationBars["ライセンス"].buttons["設定"].tap()
    }

    func testLicenseDetailView() throws {
        app.tabBars["タブバー"].buttons["設定"].tap()
        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery/*@START_MENU_TOKEN@*/ .buttons["ライセンス"]/*[[".cells.buttons[\"ライセンス\"]",".buttons[\"ライセンス\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ .tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/ .buttons["abseil"]/*[[".cells.buttons[\"abseil\"]",".buttons[\"abseil\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ .tap()
    }

    func testDeviveInfoView() throws {
        app.tabBars["タブバー"].buttons["設定"].tap()
        let collectionViewsQuery = app.collectionViews
        collectionViewsQuery/*@START_MENU_TOKEN@*/ .staticTexts["デバイス情報"]/*[[".cells",".buttons[\"デバイス情報\"].staticTexts[\"デバイス情報\"]",".staticTexts[\"デバイス情報\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/ .tap()
        collectionViewsQuery/*@START_MENU_TOKEN@*/ .buttons["Build Scheme, Staging"]/*[[".cells.buttons[\"Build Scheme, Staging\"]",".buttons[\"Build Scheme, Staging\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/ .tap()
        app.alerts["Copied \"Staging\""].scrollViews.otherElements.buttons["OK"].tap()
        app.navigationBars["デバイス情報"].buttons["設定"].tap()
    }
}
