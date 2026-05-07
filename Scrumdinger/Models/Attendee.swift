//
//  Attendee.swift
//  Scrumdinger
//
//  Created by cengizhan kaya on 6.05.2026.
//

import Foundation
import SwiftData

@Model
class Attendee: Identifiable {
    var id: UUID
    var name: String
    var dailyScrum: DailyScrum?


    init(id: UUID = UUID(), name: String) {
        self.id = id
        self.name = name
    }
}
