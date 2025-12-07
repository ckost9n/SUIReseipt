import SwiftUI

public struct ContentView: View {
    public init() {}
    
//    @Environment(\.locale) private var locale

    public var body: some View {
        TabView {
            Text("1")
//            HomeUI()
                .badge(2)
                .tabItem { Label("3", systemImage: "person.circle.fill") }
            
//            Text("2")
            HomeUI()
                .tabItem { Label("tab.item.home", systemImage: "person.circle.fill") }
            
            Text("3")
                .tabItem { Label("tab.item.favorites", systemImage: "bookmark.fill") }
            
            Text("4")
                .tabItem { Label("tab.item.profile", systemImage: "person.circle.fill") }
        }
        .accentColor(.red)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
