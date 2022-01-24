import UIKit

public class Dummy1View: UIView {
  public override init(frame: CGRect) {
    super.init(frame: frame)
    setup()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  func setup() {
    let label = UILabel()
    label.text = "Dummy1 modified"
    label.translatesAutoresizingMaskIntoConstraints = false
    
    self.addSubview(label)
    NSLayoutConstraint.activate([
      label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
      label.centerYAnchor.constraint(equalTo: self.centerYAnchor)
    ])
  }
}
