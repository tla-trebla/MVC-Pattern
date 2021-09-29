/*:
 [Previous](@previous)&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[Next](@next)
 
 # Model-view-controller (MVC)
 - - - - - - - - - -
 ![MVC Diagram](MVC_Diagram.png)
 
 The model-view-controller (MVC) pattern separates objects into three types: models, views and controllers.
 
 **Models** hold onto application data. They are usually structs or simple classes.
 
 **Views** display visual elements and controls on screen. They are usually subclasses of `UIView`.
 
 **Controllers** coordinate between models and views. They are usually subclasses of `UIViewController`.
 
 ## Code Example
 */
import UIKit

// MARK: - Address

public struct Address {
    public var street: String
    public var city: String
    public var state: String
    public var zipCode: String
}

// MARK: - AddressView
public final class AddressView: UIView {
    @IBOutlet public var streetTextField: UITextField!
    @IBOutlet public var cityTextField: UITextField!
    @IBOutlet public var stateTextField: UITextField!
    @IBOutlet public var zipCodeTextField: UITextField!
}

// MARK: - AddressViewController
public final class AddressViewController: UIViewController {
    
    // MARK: - Properties
    public var address: Address? {
        didSet {
            updateViewFromAddress()
        }
    }
    public var addressView: AddressView! {
        guard isViewLoaded else {
            return nil
        }
        return (view as! AddressView)
    }
    
    private func updateViewFromAddress() {
        guard let addressView = addressView, let address = address else {
            return
        }
        addressView.streetTextField.text = address.street
        addressView.cityTextField.text = address.city
        addressView.stateTextField.text = address.state
        addressView.zipCodeTextField.text = address.zipCode
    }
}
