//
//  MHActionViewController.swift
//  Dystruth or Dare?
//
//  Created by Michael Hulet on 8/20/16.
//  Copyright © 2016 Michael Hulet. All rights reserved.
//

import UIKit

class MHActionViewController: UIViewController{
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var actionLabel: UITextView!
    var action: MHAction?
    override func viewDidLoad() -> Void{
        super.viewDidLoad()
        backButton.prettify()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        actionLabel.text = action?.directive ?? ""
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        centerText()
    }
    @IBAction func back() -> Void{
        dismiss(animated: false, completion: nil)
    }
    func centerText() -> Void{
        var topCorrect: CGFloat = (actionLabel.bounds.size.height - actionLabel.contentSize.height * actionLabel.zoomScale) / 2
        topCorrect = topCorrect < 0 ? 0 : topCorrect
        actionLabel.contentOffset = CGPoint(x: 0, y: -topCorrect)
    }
}
