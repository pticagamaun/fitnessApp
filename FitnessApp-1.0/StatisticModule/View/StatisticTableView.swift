//
//  StatisticTableView.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 23.02.2023.
//

import UIKit

final class StatisticTableView: UITableView {
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .none
        register(UITableViewCell.self, forCellReuseIdentifier: "statisticTableView")
        delegate = self
        dataSource = self
    }
}

extension StatisticTableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        50
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = dequeueReusableCell(withIdentifier: "statisticTableView", for: indexPath)
        return cell
    }
}
