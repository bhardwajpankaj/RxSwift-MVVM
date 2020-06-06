//
//  ReactiveExtensions.swift
//  RxSwift-MVVM
//
//  Created by Pankaj Bhardwaj on 06/06/20.
//  Copyright © 2020 pankaj. All rights reserved.
//

import Foundation

import UIKit
import RxSwift
import RxCocoa

extension UIViewController: loadingViewable {}

extension Reactive where Base: UIViewController {
    
    /// Bindable sink for `startAnimating()`, `stopAnimating()` methods.
    public var isAnimating: Binder<Bool> {
        return Binder(self.base, binding: { (vc, active) in
            if active {
                vc.startAnimating()
            } else {
                vc.stopAnimating()
            }
        })
    }
    
}
