//
//  ViewController.swift
//  WebviewSample
//
//  Created by Nimble Chapps on 27/05/16.
//  Copyright © 2016 GuruSoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UIWebViewDelegate {
    
    @IBOutlet weak var webViewFullScreen: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let webUrl : NSURL = NSURL(string: "https://iosdevcenters.blogspot.com/")!
        let webRequest : NSURLRequest = NSURLRequest(URL: webUrl)
        webViewFullScreen.loadRequest(webRequest)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK:- UIWebViewDelegate Method
    
    func webViewDidStartLoad(webView: UIWebView) {
        print("Strat Loading")
    }
    func webViewDidFinishLoad(webView: UIWebView) {
        print("Finish Loading")
    }
    func webView(webView: UIWebView, didFailLoadWithError error: NSError?) {
        print(error?.localizedDescription)
    }
    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        return true
    }
}

