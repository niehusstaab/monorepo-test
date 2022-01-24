//
//  ViewController.swift
//  MonoRepoTest
//
//  Created by Liam Niehus-Staab on 1/24/22.
//

import UIKit
import Dummy1
import Dummy2

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    setup()
  }

  func setup() {
    let label = UILabel()
    label.text = "This is the monorepo test app"
    label.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(label)
    
    
    NSLayoutConstraint.activate([
      label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
    ])
  }

}

