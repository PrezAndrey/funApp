//
//  CollectionViewController.swift
//  GuessTheNumber
//
//  Created by Андрей  on 31.03.2023.
//

import UIKit

private let guessTheNumber = String(describing: NumberCollectionViewCell.self)
private let magicBall = String(describing: BallCollectionViewCell.self)

class MainCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 2
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        var cell = collectionView.dequeueReusableCell(withReuseIdentifier: guessTheNumber, for: indexPath)
        
        switch indexPath.row {
        case 0:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: guessTheNumber, for: indexPath)
        case 1:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: magicBall, for: indexPath)
        default:
            print("Error")
        }
    
        return cell
    }
}
