//
//  ViewController.swift
//  Dystruth or Dare?
//
//  Created by Michael Hulet on 8/19/16.
//  Copyright © 2016 Michael Hulet. All rights reserved.
//

import UIKit

class MHSelectionViewController: UIViewController{
    @IBOutlet var buttons: [UIButton]!
    override func viewDidLoad() -> Void{
        super.viewDidLoad()
        for button in buttons{
            button.prettify()
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) -> Void{
        super.prepare(for: segue, sender: sender)
        func correctButton() -> UIButton{
            for b in buttons{
                if b.titleLabel!.text!.lowercased() == segue.identifier!{
                    return b
                }
            }
            return UIButton()
        }
        let button: UIButton = correctButton()
        if segue.identifier == "truth"{
            (segue.destination as! MHActionViewController).action = MHAction(style: .Truth)
        }
        else if segue.identifier == "dare"{
            (segue.destination as! MHActionViewController).action = MHAction(style: .Dare)
        }
        segue.destination.view.backgroundColor = button.titleLabel?.textColor
    }
}
