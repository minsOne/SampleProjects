//
//  FeatureAlpha.swift
//  FeatureAlpha
//
//  Created by minsone on 2020/10/14.
//

import Foundation
import RxSwift
import RxCocoa

public func helloworld() {
    _ = Observable.just("Hello world on Feature Alpha")
        .asDriver(onErrorJustReturn: "Error")
        .drive(onNext: { print($0) })
}
