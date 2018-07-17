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

# Generic Function 

- written in CustomFile.swift

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
