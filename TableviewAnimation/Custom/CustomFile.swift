//
//  CustomFile.swift
//  TableviewAnimation
//
//  Created by Sushant Hegde on 17/07/18.
//  Copyright © 2018 Sushant Hegde. All rights reserved.
//

import UIKit
import Foundation


extension UITableView {
    func initTableView() {
        self.separatorColor = UIColor.clear
        self.estimatedRowHeight = UITableViewAutomaticDimension
        self.rowHeight = UITableViewAutomaticDimension
    }
}

extension UIView{
    func addCornerRadius(value:CGFloat) {
        self.layoutIfNeeded()
        self.layer.cornerRadius = value
        self.clipsToBounds = true
    }
    
    func addBorder(width:CGFloat, color:UIColor)  {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
    func  addShadow(shadowColor:UIColor, opacity:Float, shadowOffset:CGSize, shadowRadius:CGFloat) {
        self.backgroundColor = .clear
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = shadowOffset
        self.layer.shadowRadius = shadowRadius
        self.layer.masksToBounds = false
    }
    
    
}

extension UIViewController{
    
    // function to animate uitableviewcell
    
    func animateTable(animationType : String, tableview : UITableView){
    
        
        tableview.reloadData()
        
        let cells = tableview.visibleCells
        let tableHeight = tableview.bounds.size.height
        
        for cell in cells{
            
            switch animationType{
            case "bottom":
                cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
            case "right":
                cell.transform = CGAffineTransform(translationX: tableHeight, y: tableHeight)
            case "left":
                cell.transform = CGAffineTransform(translationX: 0, y: tableHeight)
            case "top":
                cell.transform = CGAffineTransform(translationX: tableHeight, y: 0)
            default:
                cell.transform = CGAffineTransform(translationX: 0, y: 0)
            }
 
        }
        
        var index = 0
        
        for cell in cells{

            UIView.animate(withDuration: 1.5, delay: 0.09 * Double(index), usingSpringWithDamping: 1.0, initialSpringVelocity: 1.0, animations: {
                switch animationType{
                case "bottom":
                    cell.transform = CGAffineTransform(translationX: 0, y: 0)
                case "right":
                    cell.transform = CGAffineTransform(translationX: 0 , y: tableHeight)
                case "left":
                    cell.transform = CGAffineTransform(translationX: tableHeight , y: tableHeight )
                case "top":
                    cell.transform = CGAffineTransform(translationX: tableHeight /*+ cell.bounds.size.height*/, y: tableHeight /*+ cell.bounds.size.height*/)
                default:
                    cell.transform = CGAffineTransform.identity
                }
            }, completion: nil)
            
            index += 1
        }
        
    }
    
}
