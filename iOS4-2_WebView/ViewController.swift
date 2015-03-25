//
//  ViewController.swift
//  iOS4-2_WebView
//
//  Created by 松下慶大 on 2015/03/13.
//  Copyright (c) 2015年 matsushita keita. All rights reserved.
//

import UIKit
import Social

class ViewController: UIViewController, UIWebViewDelegate {
    @IBOutlet weak var myWebView: UIWebView!

    var myURL = NSURL(string: "https://tech-camp.in/")
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
        var myURLReq = NSURLRequest(URL: myURL!)
        myWebView.loadRequest(myURLReq)
        
        myWebView.delegate = self
        
        
    }
    
    func webViewDidStartLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = true
    }
    
    func webViewDidFinishLoad(webView: UIWebView) {
        UIApplication.sharedApplication().networkActivityIndicatorVisible = false
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//    @IBAction func shareBtn(sender: UIButton) {
//        var facebookVC = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
//        
//        facebookVC.addURL(myURL!)
//        presentViewController(facebookVC, animated: true, completion: nil)
//        
//    }
//    
//    
    @IBAction func safariBtn(sender: UIButton) {
        
//        UIApplication.sharedApplication().openURL(myURL!)
        
//        let actionSheet = UIAlertController(title: nil , message: nil, preferredStyle: .Alert)
//        let openSafari = UIAlertAction(title: "サファリで開く", style: .Default) {
//            action in println("safari")
//            
//            actionSheet.addAction(openSafari)
//        }
//        let alertController = UIAlertController(title: nil, message:nil, preferredStyle: .ActionSheet)
//        let firstAction = UIAlertAction(title: "First", style: .Default) {
//            action in println("Pushed First")
//        }
//        let secondAction = UIAlertAction(title: "Second", style: .Default) {
//            action in println("Pushed Second")
//        }
//        let cancelAction = UIAlertAction(title: "CANCEL", style: .Cancel) {
//            action in println("Pushed CANCEL")
//        }
//        
//        alertController.addAction(firstAction)
//        alertController.addAction(secondAction)
//        alertController.addAction(cancelAction)
//        
//        //For ipad And Univarsal Device
//        alertController.popoverPresentationController?.sourceView = sender as UIView;
//        alertController.popoverPresentationController?.sourceRect = CGRect(x: (sender.frame.width/2), y: sender.frame.height, width: 0, height: 0)
//        alertController.popoverPresentationController?.permittedArrowDirections = UIPopoverArrowDirection.Up
//        
//        presentViewController(alertController, animated: true, completion: nil)
        
       
        
        var alertController = UIAlertController(title: nil, message: nil, preferredStyle: UIAlertControllerStyle.ActionSheet)
        
        alertController.addAction(UIAlertAction(title: "サファリで開く", style: .Default, handler: { action in self.openSafari()} ))
        
        alertController.addAction(UIAlertAction(title: "キャンセル", style: .Cancel, handler: { action in println("Cencel") } ))
       
        
        
        presentViewController(alertController, animated: true, completion: nil)
    }
    
    func openSafari(){
        UIApplication.sharedApplication().openURL(myURL!)
    }
    
    @IBAction func reloadBtn(sender: UIButton) {
        myWebView.reload()
    }
    
    @IBAction func stopBtn(sender: UIButton) {
        myWebView.stopLoading()
    }
//
    @IBAction func backBtn(sender: UIButton) {
        myWebView.goBack()
    }
//
//    
    @IBAction func nextBtn(sender: UIButton) {
        myWebView.goForward()
    }

    


}

