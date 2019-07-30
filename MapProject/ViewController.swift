//
//  ViewController.swift
//  MapProject
//
//  Created by 星みちる on 2019/07/17.
//  Copyright © 2019 星みちる. All rights reserved.
//

import UIKit
//マップに関する部品を読み込む
import MapKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        mapView.mapType = .hybrid
        
        
        //ピンの作成
        //１、ピンを作成
        let pin = MKPointAnnotation()
        
        //２、ピンの座標を設定
            //座標を作成する
        let point = CLLocationCoordinate2DMake(40.6892, -74.0445)
            //作成した座標をピンに設定する
        pin.coordinate = point
        
        //３、ピンのタイトル設定
        pin.title = "自由の女神"
        
        //４、ピンのサブタイトル
        pin.subtitle = "お美しい"
        
        //５、出来上がったピンをマップに追加
        mapView.addAnnotation(pin)
        
        
        let taiyouPin = MKPointAnnotation()
        let taiyouPoint = CLLocationCoordinate2DMake(38.075466, 140.756337)
        taiyouPin.coordinate = taiyouPoint
        taiyouPin.title = "太陽の村"
        pin.subtitle = "地元"
        mapView.addAnnotation(taiyouPin)
        
        //マップの初期表示位置の変更
        //1.初期表示したい座標を作成
        //2.マップの初期位置に作成した座標を設定
        let japan = CLLocationCoordinate2DMake(36.204824,138.252924)
        mapView.setCenter(japan, animated: true)
        
    }

}

