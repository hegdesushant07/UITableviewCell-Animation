//
//  FirstViewController.swift
//  TableviewAnimation
//
//  Created by Sushant Hegde on 17/07/18.
//  Copyright © 2018 Sushant Hegde. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FirstTableviewCell", for: indexPath) as! FirstTableviewCell
        cell.shadowView.addShadow(shadowColor: UIColor(red: 180/255, green: 180/255, blue: 180/255, alpha: 1.0), opacity: 1, shadowOffset: CGSize(width: 1, height: 1), shadowRadius: 2)
        cell.cornerRadiusView.addCornerRadius(value: 5)
        cell.cornerRadiusView.backgroundColor = UIColor(red: 200/255, green: 200/255, blue: 200/255, alpha: 1.0)
        
        switch indexPath.row {
        case 0:
            cell.textLbl.text = "Bottom to Top"
        case 1:
            cell.textLbl.text = "Right to Left"
        case 2:
            cell.textLbl.text = "Left to Right"
        case 3:
            cell.textLbl.text = "Top to Bottom"
        default:
            cell.textLbl.text = ""
        }
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "TableViewAnimationVC") as! TableViewAnimationVC
        // pass identifier which type of animation requried
        
        switch indexPath.row {
        case 0:
            vc.animationType = "bottom"
        case 1:
            vc.animationType = "right"
        case 2:
            vc.animationType = "left"
        case 3:
            vc.animationType = "top"
        default:
            break
        }
        self.navigationController?.pushViewController(vc, animated: true)
        
    }

    
}
