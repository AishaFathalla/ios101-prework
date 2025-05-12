//
//  ViewController.swift
//  first_app
//
//  Created by Aisha Fathalla on 5/11/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        adjustLabelColor(for: randomColor)
    }
    
    func changeColor() -> UIColor{

        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    func adjustLabelColor(for backgroundColor: UIColor) {
            var red: CGFloat = 0
            var green: CGFloat = 0
            var blue: CGFloat = 0
            var alpha: CGFloat = 0

            backgroundColor.getRed(&red, green: &green, blue: &blue, alpha: &alpha)

            // Calculate luminance
            let luminance = (0.299 * red) + (0.587 * green) + (0.114 * blue)

            // Determine text color (black for bright backgrounds, white for dark)
            let textColor = luminance > 0.5 ? UIColor.black : UIColor.white

            for subview in view.subviews {
                if let label = subview as? UILabel {
                    label.textColor = textColor
                }
            }
        }
}

