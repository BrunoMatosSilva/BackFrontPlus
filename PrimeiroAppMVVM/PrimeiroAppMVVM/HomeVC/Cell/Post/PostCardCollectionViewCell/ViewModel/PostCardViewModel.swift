//
//  PostCardViewModel.swift
//  PrimeiroAppMVVM
//
//  Created by Bruno Matos Silva on 26/08/23.
//

import UIKit

class PostCardViewModel {
    
    private var listPosts: [Posts]
    
    init(listPosts: [Posts]) {
        self.listPosts = listPosts
    }
    
    public var numberOfItems: Int {
        listPosts.count
    }
    
    public func loudCurrentPosts(indexPath: IndexPath) -> Posts {
        listPosts[indexPath.row]
    }
    
}
