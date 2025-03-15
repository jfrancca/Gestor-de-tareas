//
//  task.swift
//  gestortareas
//
//  Created by juan camilo on 13/03/25.
//

import SwiftUI

struct Task: Identifiable {
    var id = UUID()
    var title: String
    var isCompleted: Bool
}
