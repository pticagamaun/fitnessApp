//
//  SetWorkoutModel.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 04.03.2023.
//

import Foundation
import UIKit

struct SetWorkoutModel {
    var workoutModel = WorkoutModel()
    let workoutImage = UIImage(named: "workoutImage")
    
    mutating func setModel(workoutName: String, workoutNumberOfDay: Int, workoutRepeat: Bool, workoutSets: Int, workoutReps: Int, workoutTimer: Int) {
        workoutModel.workoutName = workoutName
        workoutModel.workoutNumberOfDay = workoutNumberOfDay
        workoutModel.workoutRepeat = workoutRepeat
        workoutModel.workoutSets = workoutSets
        workoutModel.workoutReps = workoutReps
        workoutModel.workoutTimer = workoutTimer
        guard let imageData = workoutImage?.pngData() else {return}
        workoutModel.workoutImage = imageData
    }
    
    func saveModel() {
        RealmManager.shared.save(workoutModel)
    }
    
    mutating func updateModel() {
        workoutModel = WorkoutModel()
    }
}
