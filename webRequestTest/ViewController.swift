//
//  ViewController.swift
//  webRequestTest
//
//  Created by Mehmet Ragıp Altuncu on 10/01/16.
//  Copyright © 2016 MehmetAltuncu. All rights reserved.
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
    
    }
    
    override func viewDidAppear(animated: Bool) {
        
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        loadRequest("https://developer.apple.com/swift/blog/")
        
    }
    
    
    func loadRequest(urlString : String) {
        
      
        let url = NSURL(string: urlString)!
        let request = NSURLRequest(URL: url)
        
        webView.loadRequest(request)
        
    }
    
    @IBAction func loadSwift(sender: AnyObject) {
        
        
        loadRequest("https://developer.apple.com/swift/blog/")
    }

    @IBAction func loadSteak(sender: AnyObject) {
        
        loadRequest("http://www.foodrepublic.com/2013/01/23/what-your-steak-really-says-about-you/")
        
        
    }
    
    @IBAction func loadGossip(sender: AnyObject) {
        
        loadRequest("http://www.tmz.com")
    }

}

