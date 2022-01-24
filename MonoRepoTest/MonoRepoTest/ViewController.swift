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
    
    let d1 = Dummy1View()
    d1.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(d1)
    
    let d2 = Dummy2View()
    d2.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(d2)
    
    NSLayoutConstraint.activate([
      label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
      label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      d1.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10),
      d1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      d2.topAnchor.constraint(equalTo: d1.bottomAnchor, constant: 50),
      d2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
    ])
  }

}

