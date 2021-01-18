//
//  AboutViewController.swift
//  Bullseye
//
//  Created by Taj on 1/17/21.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
     super.viewDidLoad()
     if let url = Bundle.main.url(forResource: "Bullseye",
     withExtension: "html") {
     let request = URLRequest(url: url)
     webView.load(request)
     }
    }
    
    @IBAction func close() {
     dismiss(animated: true, completion: nil)
    }
}
