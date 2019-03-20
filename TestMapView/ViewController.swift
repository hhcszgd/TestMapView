//
//  ViewController.swift
//  TestMapView
//
//  Created by WY on 2019/3/20.
//  Copyright © 2019 WY. All rights reserved.
//

import UIKit
import CoreLocation
class ViewController: UIViewController {
    lazy var  map : GDMapInView = {
        let m =  GDMapInView(frame: self.view.bounds)
        
        return m
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(map)
        CLLocationManager().requestWhenInUseAuthorization()
        CLLocationManager().startUpdatingLocation()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewDidAppear(_ animated: Bool) {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now()  + 5) {
            self.map.addCircle(circle: nil )
            
        }
    }

}

