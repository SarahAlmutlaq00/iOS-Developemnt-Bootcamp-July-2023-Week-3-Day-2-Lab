//
//  RootViewController.swift
//  LabWeek3Day2
//
//  Created by Sarah on 07/08/2023.
//

import Foundation
import UIKit
import SnapKit
class RootViewController : UIViewController {
    
    
    
    class RootViewController:  UIViewController {
        
        let MostPopular: MostPopularViewController = .init()
        let LifeStyle: LifeStyleViewController = .init()
        let health: HealthViewController = .init()
        let button = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 45))
        override func viewDidLoad() {
            self.view.backgroundColor = .white
            configurePopular()
            configurelifeStyle()
            configurehealth()
            self.title = "Personalized Your Feed"
            
            
            
        }
        
        func configurePopular() {
            self.view.addSubview(MostPopular)
            MostPopular.snp.makeConstraints {
                // $0.top.equalTo(mostPopular.snp.bottom)
                $0.width.equalTo(self.view.frame.width-32)
                $0.height.equalTo(200+16)
                $0.leading.equalTo(16)
            }
            
        }
        
        func configurelifeStyle() {
            self.view.addSubview(LifeStyle)
            LifeStyle.snp.makeConstraints {
                $0.top.equalTo(LifeStyle.snp.bottom)
                $0.width.equalTo(self.view.frame.width-32)
                $0.height.equalTo(200+16)
                $0.leading.equalTo(16)
            }
            
        }
        func configurehealth() {
            self.view.addSubview(health)
            health.snp.makeConstraints {
                $0.top.equalTo(health.snp.bottom)
                $0.width.equalTo(self.view.frame.width-32)
                $0.height.equalTo(200+16)
                $0.leading.equalTo(16)
            }
        }
        @objc func buttonAction(sender: UIButton!) {
               
           }
    }
}
