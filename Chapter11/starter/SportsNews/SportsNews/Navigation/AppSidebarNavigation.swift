//
//  AppSidebarNavigation.swift
//  SportsNews
//
//  Created by Craig Clayton on 7/18/20.
//

import SwiftUI



struct AppSidebarNavigation: View {
    enum NavigationItem {
        case dashboard
        case roster
        case schedule
    }

    @State private var selection: Set<NavigationItem> = [.dashboard]
    
    var body: some View {
        NavigationView { // (1)
            sidebar // (2)
                .navigationBarTitle(Text("LAKERS"), displayMode: .inline) // (3)
                .custom(font: .bold, size: 24)
            
            HomeDashboardView() // (4)
        }
    }
    
    var sidebar: some View { // (1)
        List(selection: $selection) { // (2)
            NavigationLink(destination: HomeDashboardView()) { // (1)
                Label("DASHBOARD", systemImage: "rectangle.3.offgrid.fill") // (2)
                    .custom(font: .bold, size: 18)
            }
            .accessibility(label: Text("Dashboard")) // (3)
            .tag(NavigationItem.dashboard) // (4)

            
            NavigationLink(destination: RosterView()) {
                HStack {
                    Image("jersey")
                        .renderingMode(.template)
                        .padding(.leading, 5)
                        .padding(.trailing, 10)
                    Text("ROSTER")
                        .custom(font: .bold, size: 18)
                }
            }
            .accessibility(label: Text("Roster"))
            .tag(NavigationItem.roster)

            NavigationLink(destination: ScheduleView()) {
                Label("SCHEDULE", systemImage: "calendar")
                    .custom(font: .bold, size: 18)
            }
            .accessibility(label: Text("Schedule"))
            .tag(NavigationItem.schedule)



        }
        .listStyle(SidebarListStyle()) // (3)
    }

}

struct AppSidebarNavigation_Previews: PreviewProvider {
    static var previews: some View {
        AppSidebarNavigation()
    }
}
