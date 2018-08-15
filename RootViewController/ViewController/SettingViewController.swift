//
//  SettingViewController.swift
//  RootViewController
//
//  Created by satoutakeshi on 2018/04/01.
//  Copyright © 2018年 Personal Factory. All rights reserved.
//

import UIKit

class SettingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.gray
    }
    static func instantiate() -> SettingViewController {
        guard let setting = UIStoryboard(name: "Setting", bundle: nil).instantiateInitialViewController() as? SettingViewController else {
            fatalError("not set top camera screen")
        }
        return setting
    }
    @IBAction func siginout(_ sender: UIButton) {
        AppDelegate.shared.router.route(to: .login, from: self)
    }
}
