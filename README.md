# AuthModule
Modularisation practice

# Routing

```swift
/// Inspired from Paul Hudson's [video](https://www.youtube.com/watch?v=7HgbcTqxoN4), we created Storyboarded so that ViewControllers can provide an implementation to instantiate them from storyboards. Here's how to comform to this protocol and what it means for the code:
///
///     class ViewController: Storyboarded {
///         ...
///         static func instantiate() -> Self {
///             let id = String(describing: self)
///             let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
///             return storyboard.instantiateViewController(withIdentifier: id) as! Self
///         }
///     }
///
/// This will reduce the following lines:
///
///     let storyboard = UIStoryboard(name: "ViewController", bundle: Bundle.main)
///     let viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
///
/// to:
///
///     ViewController.instantiate()
///
/// Happy Coding!

public protocol Storyboarded {
    static func instantiate() -> Self
}
```

# UIViewController
 
```swift
public class Something: UIViewController {
    
    // MARK: - IBOutlets
    
    // MARK: - VIP Setup
    
    // MARK: - View Life Cycle
    
    // MARK: - IBActions
    
    // MARK: - Utility functions
}

// MARK: - Extensions

extension Something: Storyboarded {

}
```
