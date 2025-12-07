import SwiftUI

@main
struct SUIReseiptApp: App {
    
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate

    @ObservedObject private var themeManager = ThemeManager.shared
    
    var body: some Scene {
        WindowGroup {
            TabbarUI().environmentObject(themeManager)
        }
    }
}
