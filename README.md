# Swift: a compiler crash

Here is a sample project to reproduce a crash in the Swift compiler.

Don't know how to fix this. Issue seems to be tied to the closure parameter, 
but not really sure about this.

Any idea?

```swift
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
```
