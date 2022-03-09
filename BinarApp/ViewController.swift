//
//  ViewController.swift
//  BinarApp
//
//  Created by Prana Apsara Wijaya on 08/03/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var blueButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(clickedRepeatOnPlate))
        tapGesture.numberOfTapsRequired = 2
        blueButton.addGestureRecognizer(tapGesture)
        setUpBlueButton()
    }
    
    @IBAction func onBlueButtonTouchUpInside(_ sender: UIButton, forEvent event: UIEvent) {
        blueButton.setTitle("blue is still enabled", for: .normal)
    }
    
    func addDoubleTapEvent() {
       let tapGesture = UITapGestureRecognizer(target: self, action: #selector(clickedRepeatOnPlate(gesture:)))
       tapGesture.numberOfTapsRequired = 2
        blueButton.addGestureRecognizer(tapGesture)
     }

     @objc func clickedRepeatOnPlate(gesture: UITapGestureRecognizer) {
         guard let button = gesture.view as? UIButton else { return }
         blueButton.isEnabled.toggle()
         blueButton.setTitle("blue disabled", for: .disabled)
     }
    
    func setUpBlueButton(){
        blueButton.setTitle("blue enabled", for: .normal)
        blueButton.backgroundColor = .blue
        blueButton.setTitleColor(.white, for: .normal)
    }

    @IBAction func onBlueButtonTouchDownRepeat(_ sender: UIButton) {
    }
    
}

class customButton: UIButton {
    
}
