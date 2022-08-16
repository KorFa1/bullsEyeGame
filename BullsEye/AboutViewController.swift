//
//  AboutViewController.swift
//  BullsEye
//
//  Created by Кирилл Софрин on 16.08.2022.
//

import UIKit
import WebKit

class AboutViewController: UIViewController {

    
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        if let url = Bundle.main.url(forResource: "BullsEye", withExtension: "html") {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
    
    
}
