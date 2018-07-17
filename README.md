# UITableviewCellAnimation

# Summary
Simple animations for UITableviewCell in Swift

# Usage

--  Create an outlet of Tableview 
-- pass animation type to the generic function animateTable

Animation type :
    - bottom
    - right
    - left
    - top


    @IBOutlet weak var animationtableView: UITableView!



    override func viewWillAppear(_ animated: Bool) {


        let cell = TableviewAnimationCell()

        animateTable(animationType: self.animationType, tableview: self.animationtableView)
    }
