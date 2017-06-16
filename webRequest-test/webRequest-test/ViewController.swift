//
//  ViewController.swift
//  webRequest-test
//
//  Created by Nut Aroonrunangaram on 10/10/2559 BE.
//  Copyright © 2559 Nut Aroonrunangaram. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
        print(container.bounds.width)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let frame = CGRect(x: 0, y: 0, width: container.bounds.width, height: container.bounds.height)
        webView.frame = frame
        
        loadRequest(urlStr: "https://developer.apple.com/swift/blog/")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadRequest(urlStr: String) {
        
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(url: url as URL)
        webView.load(request as URLRequest)
    }
    

    @IBAction func loadSwift(_ sender: AnyObject) {
        loadRequest(urlStr: "https://developer.apple.com/swift/blog/")
    }

    @IBAction func loadGossip(_ sender: AnyObject) {
        loadRequest(urlStr: "http://www.tmz.com/")
    }
    
    @IBAction func loadSteak(_ sender: AnyObject) {
        loadRequest(urlStr: "http://www.pantip.com/")
    }
}

