//
//  QTLLoginMediator.swift
//  CTMediator
//
//  Created by admin on 2022/3/2.
//

import CTMediator

let kTargetModuleName = "QTLLogin"
let kLoginMediator = "Login"

@objc public extension CTMediator {
    
    @objc func LoginViewController(_ params: NSDictionary) -> UIViewController? {
        let params = [
            kCTMediatorParamsKeySwiftTargetModuleName:kTargetModuleName
        ] as [AnyHashable : Any]
        if let viewController = self.performTarget(kLoginMediator, action: "LoginViewController", params: params, shouldCacheTarget: false) as? UIViewController {
            return viewController
        }
        return nil
    }
}
