//
//  ViewController.swift
//  NewsApplikeSmartNews
//
//  Created by 小林純也 on 2018/03/29.
//  Copyright © 2018年 Junya Kobayashi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pageMenu : CAPSPageMenu?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "PAGE MENU"
        self.navigationController?.navigationBar.barTintColor = UIColor(red: 30.0/255.0, green: 30.0/255, blue: 30.0/255.0, alpha: 1.0)
        self.navigationController?.navigationBar.shadowImage = UIImage()
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        self.navigationController?.navigationBar.barStyle = UIBarStyle.black
        self.navigationController?.navigationBar.tintColor = UIColor.white
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.orange]
        // Do any additional setup after loading the view, typically from a nib.
        
        var controllerArray : [UIViewController] = []
        
        var controller1 : UIViewController = UIViewController(nibName: "TableViewController", bundle: nil)
        controller1.title = "sample title"
        controllerArray.append(controller1)
        
        var controller2 : UIViewController = UIViewController(nibName: "TableViewController", bundle: nil)
        controller1.title = "sample title"
        controllerArray.append(controller2)
        
        var controller3 : UIViewController = UIViewController(nibName: "TableViewController", bundle: nil)
        controller1.title = "sample title"
        controllerArray.append(controller3)
        
        var controller4 : UIViewController = UIViewController(nibName: "TableViewController", bundle: nil)
        controller1.title = "sample title"
        controllerArray.append(controller4)
        
        var parameters: [CAPSPageMenuOption] = [
            .scrollMenuBackgroundColor(UIColor(red: 30.0/255.0, green: 30.0/255.0, blue: 30.0/255.0, alpha: 1.0)),
            .viewBackgroundColor(UIColor(red: 20.0/255.0, green: 20.0/255.0, blue: 20.0/255.0, alpha: 1.0)),
            .selectionIndicatorColor(UIColor.orange),
            .bottomMenuHairlineColor(UIColor(red: 70.0/255.0, green: 70.0/255.0, blue: 80.0/255.0, alpha: 1.0)),
            .menuItemFont(UIFont(name: "HelveticaNeue", size: 13.0)!),
            .menuHeight(80.0),
            .menuItemWidth(90.0),
            .centerMenuItems(true)
    
        ]
        
        pageMenu = CAPSPageMenu(ViewControllers: controllerArray, frame: CGRectMake(0.0, 0.0, self.view.frame.width, self.view.frame.height), pageMenuOption: parameters)
        
        self.addChildViewController(pageMenu!)
        self.view.addSubview(pageMenu!.view)
        
        pageMenu!.didMove(toParentViewController: self)
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

