//
//  WorkoutTableView.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 13.02.2023.
//

import UIKit

final class WorkoutTableView: UITableView {
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setupTable()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTable() {
        backgroundColor = .none
        bounces = false
        allowsSelection = false
        separatorColor = .clear
        showsVerticalScrollIndicator = false
        register(WorkoutTableViewCell.self, forCellReuseIdentifier: WorkoutTableViewCell.idWorkoutTableViewCell)
        delegate = self
        dataSource = self
    }
}

extension WorkoutTableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = dequeueReusableCell(withIdentifier: WorkoutTableViewCell.idWorkoutTableViewCell,
                                             for: indexPath) as? WorkoutTableViewCell
        else {return UITableViewCell()}
        cell.workoutCellDelegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}

extension WorkoutTableView: MainTableViewCellProtocol {
    func startButtonTapped() {
        print(#function)
    }
}
