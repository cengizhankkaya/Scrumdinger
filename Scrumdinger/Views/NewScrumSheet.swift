//
//  NewScrumSheet.swift
//  Scrumdinger
//
//  Created by cengizhan kaya on 5.05.2026.
//

import SwiftUI


struct NewScrumSheet: View {


    var body: some View {
        NavigationStack {
            DetailEditView(scrum: nil)
        }
    }
}


#Preview {
    NewScrumSheet()
}
