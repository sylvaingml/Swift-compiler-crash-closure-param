//
//  Counter.swift
//  Swift-compiler-crash-closure-param
//
//  Created by Sylvain on 08/02/2015.
//
//

import Foundation

class Counter
{
    enum Sections: Int {
        case counters = 0, action
    }

    
    var value: Int = 0
    

    internal func changeCounter(
        atIndexPath indexPath: NSIndexPath,
        withUnary operation: ( Int ) -> Int
        )
    {
        let section = Sections(rawValue: indexPath.section)
        if ( .counters == section )
        {
            value = operation(value)
        }
    }

}