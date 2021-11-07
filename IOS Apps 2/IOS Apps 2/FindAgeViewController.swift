//
//  FindAgeViewController.swift
//  IOS Apps 2
//
//  Created by IDOUDA on 07/11/21.
//

import UIKit

class FindAgeViewController: UIViewController {

    @IBOutlet weak var labelUmur: UILabel!
    @IBOutlet weak var datePicker: UIDatePicker!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnCalculate(_ sender: Any) {
        
        let birthDate = self.datePicker.date //ngambil data date
        
        //get today date
        let today = Date()
        
        //check our birth date is earlier than today
        if birthDate >= today{
            //display error and return
            let alertDialog = UIAlertController(title: "Error", message: "Please Enter a Valid Date!", preferredStyle: .alert)
            
            let alertAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            alertDialog.addAction(alertAction)
            present(alertDialog, animated: true, completion: nil)
            return
        }
        
        //deklarasi calender
        let calender = Calendar.current
        let componenents = calender.dateComponents([.year, .month, .day], from: birthDate, to: today)
        //hasil dari differece dates from above
        guard let ageYears = componenents.year else {return}
        guard let ageMonths = componenents.month else {return}
        guard let ageDays = componenents.day else {return}
        
        //menampilkan umur pada label
        
        labelUmur.text = "\(ageYears) years, \(ageMonths) month, \(ageDays) days"
        
    }

    /*
    // MARK: - Navigation

     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
