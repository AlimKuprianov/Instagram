//
//  SearchCollectionViewDelegate.swift
//  Instagram
//
//  Created by Alim Kuprianov on 07.04.2022.
//

import UIKit

final class SearchCollectionViewDelegate: NSObject {
    var selectCellAtIndexCompletion: ((Int) -> Void)?
}

// MARK: - UICollectionViewDelegate

extension SearchCollectionViewDelegate: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectCellAtIndexCompletion?(indexPath.row)
    }
}
