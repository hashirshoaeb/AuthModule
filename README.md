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
protocol SomethingSource {
    var variable: String {get set}
}

protocol SomethingDelegate {
    func onAction()
}

public class Something: UIViewController {
    private var delegate: SomethingDelegate?
    private var viewModel: SomethingSource?
    
    // MARK: - IBOutlets
    
    // MARK: - VIP Setup
    func setup(viewModel: SomethingSource?) {
        self.viewModel = viewModel
    }
    
    func setup(delegate: SomethingDelegate?) {
        self.delegate = delegate
    }
    
    // MARK: - View Life Cycle
    
    // MARK: - IBActions
    
    // MARK: - Utility functions
}

// MARK: - Extensions

extension Something: Storyboarded {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: id) as! Self
    }
    
    // MARK: - Utility functions
    public static func instantiateWithParams(delegate: SomethingDelegate?, viewModel: SomethingSource?) -> Self {
        let screenController = Something.instantiate()
        screenController.delegate = delegate
        screenController.viewModel = viewModel
        return screenController as! Self
    }
    
    public static func instantiateAsBottomSheet(delegate: SomethingDelegate?, viewModel: SomethingSource?) -> UIViewController {
        let screenController = Something.instantiateWithParams(delegate: delegate, viewModel: viewModel)
        screenController.preferredContentSize.height = CGFloat(156.0)
        let viewController = BottomSheetNavigationController(rootViewController: screenController)
        viewController.navigationBar.isHidden = true
        return viewController
    }
}
```
