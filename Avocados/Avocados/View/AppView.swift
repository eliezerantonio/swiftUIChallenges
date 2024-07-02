//
//  AppView.swift
//  Avocados
//
//  Created by Eliezer Antonio on 02/07/24.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            AvocadosView().tabItem({
                Image("tabicon-branch")
                Text("Avocados")
            })

            ContentView().tabItem({
                Image("tabicon-book")
                Text("Recipes")
            })

            RepiningStagesView()
                .tabItem({
                    Image("tabicon-avocado")
                    Text("Ripening")
                })

            SettingsView().tabItem({
                Image("tabicon-settings")
                Text("Settings")
            })
        } //: TABVIEW
        .accentColor(Color.primary)
    }
}

#Preview {
    AppView()
}
