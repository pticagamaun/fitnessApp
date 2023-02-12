//
//  WorkoutTableView.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 13.02.2023.
//

import UIKit

final class WorkoutTableView: UITableView {
    
    private let idWorkoutTableView = "idWorkoutTableView"
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setupTable()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupTable() {
        backgroundColor = .clear
        register(UITableViewCell.self, forCellReuseIdentifier: idWorkoutTableView)
        delegate = self
        dataSource = self
    }
}

extension WorkoutTableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        30
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dequeueReusableCell(withIdentifier: idWorkoutTableView, for: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath)
    }
}
