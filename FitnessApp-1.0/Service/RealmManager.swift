//
//  RealmManager.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 02.03.2023.
//

import RealmSwift

class RealmManager {
    
    static let shared = RealmManager()
    private init() {}
    private let realm = try! Realm()
    
    func getWorkoutModelResults() -> Results<WorkoutModel> {
        realm.objects(WorkoutModel.self)
    }
    
    func save(_ model: WorkoutModel) {
        do {
            try realm.write {
                realm.add(model)
            }
        } catch let error {
            print("Error saving WorkoutModel: \(error.localizedDescription)")
        }
    }
    
    func delete(_ model: WorkoutModel) {
        do {
            try realm.write {
                realm.delete(model)
            }
        } catch let error {
            print("Error clearing WorkoutModel: \(error.localizedDescription)")
        }
    }
    
    func updateRepsSetsWorkoutModel(model: WorkoutModel, sets: Int, reps: Int) {
        do {
            try realm.write{
                model.workoutSets = sets
                model.workoutReps = reps
            }
        } catch let error {
            print("Error clearing WorkoutModel: \(error.localizedDescription)")
        }
    }
    
    func updateTimerSetsWorkoutModel(model: WorkoutModel, sets: Int, timer: Int) {
        do {
            try realm.write {
                model.workoutSets = sets
                model.workoutTimer = timer
            }
        } catch let error {
            print("Error clearing WorkoutModel: \(error.localizedDescription)")
        }
    }
    
    func updateStatusWorkoutModel(model: WorkoutModel) {
        do {
            try realm.write {
                model.workoutStatus = true
            }
        } catch let error {
            print("Error clearing WorkoutModel: \(error.localizedDescription)")
        }
    }
}



