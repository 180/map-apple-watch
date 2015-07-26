//
//  InterfaceController.swift
//  MapApp WatchKit Extension
//
//  Created by Maciej Stanik on 26/07/2015.
//  Copyright (c) 2015 Maciej Stanik. All rights reserved.
//

import WatchKit
import Foundation



class InterfaceController: WKInterfaceController {

    @IBOutlet weak var map: WKInterfaceMap!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        
        let location = CLLocationCoordinate2D(latitude: 54.26, longitude: 18.33)
        let span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        
        var region = MKCoordinateRegion(center: location, span: span)
        
        map.setRegion(region)
        
        map.addAnnotation(location, withPinColor: WKInterfaceMapPinColor.Red)
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
