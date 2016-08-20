//
//  MHAction.swift
//  Dystruth or Dare?
//
//  Created by Michael Hulet on 8/20/16.
//  Copyright © 2016 Michael Hulet. All rights reserved.
//

import Foundation

enum MHActionSyle{
    case Truth
    case Dare
}

let truths = ["Are you afriad of the dark?", "Do you stil wet the bed?", "What is your Social Security Number?"]
let dares = ["Scream at the top of your lungs", "Let someone punch you in the arm as hard as they can", "Don't speak until it's your turn again", "Hold your breath for 30 minutes", "Report any persons of treason to the overlord watch command immediatly"]

extension Double{
    static func random() -> Double{
        return Double(arc4random())
    }
    static func jsRandom() -> Double{
        return random() / Double(UINT32_MAX)
    }
}

extension Array{
    var randomObject: Element?{
        get{
            return count > 0 ? self[Int(randomIndex)] : nil
        }
    }
    var randomIndex: UInt{
        get{
            return count > 0 ? UInt(arc4random_uniform(UInt32(count))) : UInt(NSNotFound);
        }
    }
}

struct MHAction{
    let style: MHActionSyle
    let directive: String
    init(style: MHActionSyle){
        self.style = style
        if style == .Truth{
            directive = truths.randomObject!
        }
        else if style == .Dare{
            directive = dares.randomObject!
        }
        else{
            directive = ""
        }
    }
}
