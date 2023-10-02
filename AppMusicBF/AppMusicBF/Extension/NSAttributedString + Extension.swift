//
//  NSAttributedString + Extension.swift
//  AppMusicBF
//
//  Created by Caio on 06/10/21.
//

import UIKit

extension  NSAttributedString{
    
   public static func featureText(_ likeCount: String , _ duration: String) -> NSAttributedString {
        let attributedText = NSMutableAttributedString(string:"")
        
        let font1 = UIFont.systemFont(ofSize: 13)
        let img1 = UIImage(named:"likeplus")?.withRenderingMode(.alwaysTemplate).withTintColor(.white)
        
        let image1 = NSTextAttachment()
        image1.image = img1
        image1.bounds = CGRect(x: 0, y: (font1.capHeight - 13).rounded() / 2, width: 13, height: 13)
        image1.setImageHeight(height: 13)
        let img1String = NSAttributedString(attachment: image1)
        attributedText.append(img1String)
        
        attributedText.append(NSAttributedString(string: " \(likeCount) . " , attributes:[NSAttributedString.Key.font: UIFont.systemFont(ofSize: 12 , weight:.regular) , NSAttributedString.Key.foregroundColor: UIColor.white]))
        
        let font2 = UIFont.systemFont(ofSize: 13)
        let img2 = UIImage(named:"timerplus")?.withRenderingMode(.alwaysTemplate).withTintColor(.white)
        let image2 = NSTextAttachment()
        image2.image = img2
        image2.bounds = CGRect(x: 0, y: (font2.capHeight - 13).rounded() / 2, width: 13, height: 13)
        image2.setImageHeight(height: 13)
        let img2String = NSAttributedString(attachment: image2)
        attributedText.append(img2String)
        
        attributedText.append(NSAttributedString(string: " \(duration)" , attributes:[NSAttributedString.Key.font: UIFont.systemFont(ofSize: 13 , weight:.regular) , NSAttributedString.Key.foregroundColor: UIColor.white]))
        return attributedText
    }
    
}


