// Playground - Experiment a simple crash

import Foundation
import AppKit

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
        let section = Sections(rawValue: indexPath.indexAtPosition(0))
        if ( Sections.counters == section )
        {
            value = operation(value)
        }
    }
    
}
