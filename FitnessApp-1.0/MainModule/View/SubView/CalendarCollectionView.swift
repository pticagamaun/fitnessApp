//
//  CalendarCollectionView.swift
//  FitnessApp-1.0
//
//  Created by Vadim on 12.02.2023.
//

import UIKit

protocol CalendarCollectionProtocol: AnyObject {
    func selectItem(indexPath: IndexPath)
}

final class CalendarCollectionView: UICollectionView {
    
    weak var calendarDelegate: CalendarCollectionProtocol?
    private let flowLayout = UICollectionViewFlowLayout()
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: flowLayout)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        backgroundColor = .none
        flowLayout.minimumLineSpacing = 5
        register(CalendarCollectionViewCell.self, forCellWithReuseIdentifier: CalendarCollectionViewCell.idCallendarCollectionCell)
        delegate = self
        dataSource = self
    }
}

extension CalendarCollectionView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        7
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = dequeueReusableCell(withReuseIdentifier: CalendarCollectionViewCell.idCallendarCollectionCell, for: indexPath) as? CalendarCollectionViewCell else {return UICollectionViewCell()}
        if indexPath.row == 6 {
            collectionView.selectItem(at: indexPath, animated: true, scrollPosition: .right)
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        calendarDelegate?.selectItem(indexPath: indexPath)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width / 9, height: collectionView.frame.height)
    }
    
}
