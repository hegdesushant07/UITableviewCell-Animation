//
//  TableViewAnimationVC.swift
//  TableviewAnimation
//
//  Created by Sushant Hegde on 17/07/18.
//  Copyright © 2018 Sushant Hegde. All rights reserved.
//

import UIKit

class TableViewAnimationVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var animationtableView: UITableView!
    var animationType : String = ""
    var flag : Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        let cell = TableviewAnimationCell()
        
        animateTable(animationType: self.animationType, tableview: self.animationtableView)
        self.flag = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 11
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableviewAnimationCell", for: indexPath) as! TableviewAnimationCell
        
        switch indexPath.row {
        case 0:
            cell.label.text = "Present your content onscreen and define the interactions allowed with that content.."
        case 1:
            cell.label.text = "Use stack views to lay out the views of your interface automatically. Use Auto Layout when you require precise placement of your views."
        case 2:
            cell.label.text = "Provide feedback to users using view-based animations and haptics."
        case 3:
            cell.label.text = "UIKit manages your app's interactions with the system and provides classes for you to manage your app's data and resources."
        case 4:
            cell.label.text = "Hello"
        case 5:
            cell.label.text = "Views help you display content onscreen and facilitate user interactions; view controllers help you manage views and the structure of your interface."
        case 6:
            cell.label.text = "Views help you display content onscreen and facilitate user interactions; view controllers help you manage views and the structure of your interface."
        case 7:
            cell.label.text = "UIKit manages your app's interactions with the system and provides classes for you to manage your app's data and resources."
        case 8:
            cell.label.text = "Views help you display content onscreen and facilitate user interactions; view controllers help you manage views and the structure of your interface."
        case 9:
            cell.label.text = "Views help you display content onscreen and facilitate user interactions; view controllers help you manage views and the structure of your interface."
        case 10:
            cell.label.text = "UIKit manages your app's interactions with the system and provides classes for you to manage your app's data and resources."
        default:
            cell.label.text = "Hello"
        }
        
        // self sizing tableview cell
        cell.label.translatesAutoresizingMaskIntoConstraints = false
        cell.label.numberOfLines = 0
        
        return cell
    }


}
