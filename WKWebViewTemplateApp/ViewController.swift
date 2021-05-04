//
//  ViewController.swift
//  WKWebViewTemplateApp
//
//  Created by Samuel B Heather on 04/05/2021.
//  Copyright © 2021 Sam Heather. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet var urlBar:UITextField!
    @IBOutlet var goBUtton:UIButton!
    var webView:PWKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = URL(string: "https://facebook.com/")
        let request = URLRequest(url: url!)
        
        var frame:CGRect = view.frame
        frame.origin.y = 120
        webView = PWKWebView(frame: frame)
//        let webView = WKWebView(frame: frame, configuration: WKWebViewConfiguration.proxyConifg)
        view.addSubview(webView)
        
        webView?.load(request)
    }
    
    @IBAction func goButtonPressed(sender: AnyObject) {
        let url = URL(string: urlBar.text!)
        let request = URLRequest(url: url!)
        webView.load(request)
    }


}

