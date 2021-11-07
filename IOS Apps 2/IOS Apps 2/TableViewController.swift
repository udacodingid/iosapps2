//
//  TableViewController.swift
//  IOS Apps 2
//
//  Created by IDOUDA on 07/11/21.
//

import UIKit

class TableViewController: UITableViewController {
    
    let dataAnimals = ["Dog", "Cat", "Zebra", "Horse", "Fish", "Bird"]
    
    let dataFlowers = [
        "Bunga Melati", "Bunga Kembang", "Bunga Anggrek", "Bunga Lidah Mertua", "Bunga Modern", "Bunga Jepang"
    ]
    
    let dataCountry = [
        "Jakarta", "Bandung","Surabaya", "Medan",
        "Padang", "Batam"
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
//        return self.dataAnimals.count;
        return 6
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell:UITableViewCell = UITableViewCell(style: .default, reuseIdentifier: "cell")
        
        
        switch (indexPath.section){
        case 0 :
            cell.textLabel?.text = dataFlowers[indexPath.row]
        case 1 :
            cell.textLabel?.text = dataAnimals[indexPath.row]
            
        case 2 :
            cell.textLabel?.text = dataCountry[indexPath.row]
        default:
            cell.textLabel?.text = "Other"
            
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let headerCell:HeaderViewCell  = tableView.dequeueReusableCell(withIdentifier: "headerCell") as! HeaderViewCell
        
        headerCell.backgroundColor = UIColor.cyan
        
        switch (section) {
        case 0:
            headerCell.labelHeader.text = "LIST FLOWERS"
        case 1 :
            headerCell.labelHeader.text = "LIST ANIMALS"
            
        case 2 :
            headerCell.labelHeader.text = "LIST COUNTRIES"
        default:
            headerCell.labelHeader.text = "OTHER"
        }
        
        return headerCell
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
