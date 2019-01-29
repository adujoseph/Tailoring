//
//  ViewController.swift
//  Tailoring
//
//  Created by MAC on 29/01/2019.
//  Copyright © 2019 MAC. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: WKWebView!
    let urlString = "http://tailori.ng/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let url = URL(string: urlString ){
            let request = URLRequest(url: url)
            webView.load(request)
            navigationItem.title = urlString
        } else {
            navigationItem.title = "No Internet Connection"
        }
    }


    @IBAction func pressShareButton(_ sender: UIBarButtonItem) {
        
        let activityVC = UIActivityViewController(activityItems: [urlString], applicationActivities: nil)
        activityVC.popoverPresentationController?.sourceView = self.view
        self.present(activityVC, animated: true, completion: nil)
    }
}

