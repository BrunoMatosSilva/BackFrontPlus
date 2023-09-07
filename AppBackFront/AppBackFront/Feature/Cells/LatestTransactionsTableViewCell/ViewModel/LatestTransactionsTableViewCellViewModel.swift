//
//  LatestTransactionsViewModel.swift
//  AppBackFront
//
//  Created by Bruno Matos Silva on 05/09/23.
//

import UIKit

enum HeightLatestTransactions: CGFloat {
    case height = 70
}

class LatestTransactionsTableViewCellViewModel {
    
    var data: LatestTransactionsCell?
    
    public func setLatestTransactions(data: LatestTransactionsCell) {
        self.data = data
    }
    
    public var title: String {
        return data?.latestTransactionsTitle ?? ""
    }
    
    public var numberOfRowsInSection: Int {
        return data?.listOfTransactions?.count ?? 0
    }
    
    public var heightForRowAt: CGFloat {
        return HeightLatestTransactions.height.rawValue
    }
    
    public func loadCurrentLatestDeal(indexPath: IndexPath) -> ListOfTransaction {
        return data?.listOfTransactions?[indexPath.row] ?? ListOfTransaction()
    }
    
    public func isInicial(indexPath: IndexPath) -> Bool {
        return indexPath.row == 0
    }
    
    public func isFinal(indexPath: IndexPath) -> Bool {
        return indexPath.row == numberOfRowsInSection - 1
    }
}
