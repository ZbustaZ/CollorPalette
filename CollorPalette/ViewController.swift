//
//  ViewController.swift
//  CollorPalette
//
//  Created by Howard Matthews on 07.02.2023.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 20
        
    }

    @IBAction func redSliderAction() {
        redLabel.text = redSlider.value.formatted()
        changeColor()
    }
    @IBAction func greenSliderAction() {
        greenLabel.text = greenSlider.value.formatted()
        changeColor()
    }
    
    @IBAction func blueSliderAction() {
        blueLabel.text = blueSlider.value.formatted()
        changeColor()
    }
    
    private func changeColor() {
        colorView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1
        )
    }
}

