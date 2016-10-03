//
//  ColoursViewController.swift
//  PickColours
//
//  Created by Moesaeah King on 9/26/16.
//  Copyright © 2016 Moesaeah King. All rights reserved.
//

import UIKit

class ColoursViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
     @IBOutlet weak var colorChoiceLabel: UILabel!
     @IBOutlet weak var colorPicker: UIPickerView!
     
     var colorNames = ["Red", "Orange", "Gray", "Yellow", "Green", "Purple", "Brown", "Black"]
     var colours = [UIColor.red, UIColor.orange, UIColor.lightGray, UIColor.yellow, UIColor.green, UIColor.purple, UIColor.brown, UIColor.black]

    override func viewDidLoad() {
        super.viewDidLoad()
     
        colorPicker.dataSource = self
        colorPicker.delegate = self
     
        colorChoiceLabel.text = colorNames[colorPicker.selectedRow(inComponent: 0)]
        view.backgroundColor = colours[colorPicker.selectedRow(inComponent: 0)]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
     
     func numberOfComponents(in pickerView: UIPickerView) -> Int {
          return 1
     }
     func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
          return colorNames.count
     }
     func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
          return colorNames[row]
     }
     func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
          updateUI(row)
     }
     func updateUI(_ row: Int) {
          colorChoiceLabel.text = colorNames[row]
          view.backgroundColor = colours[row]
     }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
