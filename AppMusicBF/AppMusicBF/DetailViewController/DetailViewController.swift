//
//  DetailViewController.swift
//  AppMusicBF
//
//  Created by Bruno Matos Silva on 30/09/23.
//

import UIKit

enum StateAnimation{
    case long
    case short
}

class DetailViewController: UIViewController {
    
    var screen:DetailViewControllerScreen?
    
    var cardModel:CardViewModel?
    
    var valueAnimation:StateAnimation = .long
    
    override func loadView() {
        self.screen = DetailViewControllerScreen(dataView: self.cardModel)
        self.screen?.configAllDelegate(tableViewDelegate: self, tableViewDataSource: self, scrollViewDelegate: self, detailViewScreenDelegate: self)
        self.view = self.screen
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    private func animationWithView() {
        UIView.animate(withDuration: 0.3, delay:0 , options: .curveEaseInOut) {
            self.view.layoutIfNeeded()
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let window = UIApplication.shared.connectedScenes.filter({$0.activationState == .foregroundActive}).compactMap({$0 as? UIWindowScene}).first?.windows.filter({$0.isKeyWindow}).first
        
        let topPadding = window?.safeAreaInsets.top
        print(scrollView.contentOffset.y)
        
        if scrollView.contentOffset.y >= 300 {
            self.screen?.navBarTopAchor?.constant = 0
            
            if valueAnimation == .long {
                self.animationWithView()
            }
            self.valueAnimation = .short
        } else {
            self.screen?.navBarTopAchor?.constant = -((topPadding ?? 0.0) + 80)
            if valueAnimation == .short {
                self.animationWithView()
            }
            self.valueAnimation = .long
        }
        
    }
    

}

extension DetailViewController: DetailViewControllerScreenDelegate {
    
    func tappedCloseButton() {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}

extension DetailViewController:UITableViewDelegate, UITableViewDataSource, UIScrollViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cardModel?.cardList?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DetailTableViewCell.idenfitier, for: indexPath) as? DetailTableViewCell
        cell?.setupCell(data: self.cardModel?.cardList?[indexPath.row] ?? CardListModel())
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.screen?.playerView.setupView(data: self.cardModel?.cardList?[indexPath.row] ?? CardListModel())
        self.screen?.playerViewBottomAchor?.constant = 0
        self.animationWithView()
    }
}
