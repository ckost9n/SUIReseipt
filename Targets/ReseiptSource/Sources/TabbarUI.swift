import DSKit
import SwiftUI

public struct TabbarUI: View {
    @EnvironmentObject private var themeManager: ThemeManager

    public var body: some View {
        TabView {
            SearchResultsUI()
                .badge(2)
                .tabItem { Label("3", systemImage: "person.circle.fill") }
            
            HomeUI()
                .tabItem { Label("tab.item.home", systemImage: "person.circle.fill") }
            
            Text("3")
                .tabItem { Label("tab.item.favorites", systemImage: "bookmark.fill") }
            
            Text("4")
                .tabItem { Label("tab.item.profile", systemImage: "person.circle.fill") }
        }
        .accentColor(Color.label.secondary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabbarUI().environmentObject(ThemeManager.shared)
    }
}
