//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite school",
                 description: "Where do you go to learn something educational?"),
            Task(title: "Your favorite country",
                 description: "Where do you want to learn more on the culture"),
            Task(title: "Your favorite local cafe",
                 description: "Where do you want ot go and drink cofee?"),
            Task(title: "Your favorite swimming spot",
                 description: "Where do you want to go and be like Micheal Phelps?"),
            Task(title: "Your favorite gym",
                 description: "Where do you want to go to be fit?"),
        ]
    }
}
