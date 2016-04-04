//
//  Extension.swift
//  CafeRecipe
//
//  Created by 박태현 on 2016. 4. 4..
//  Copyright © 2016년 DaveLee. All rights reserved.
//

import Foundation

extension Beverage where Self: Coffeeable {
    var shot: Int {return 2}
}

extension Beverage where Self: Mixable {
    var canMix: Bool {return true}
}

extension Beverage where Self: Hotable {
    var isHot: Bool {return true}
}

extension Beverage where Self: Fruitable {
    var isHot: Bool {return false}
}

extension Beverage where Self: Iceable {
    var isHot: Bool {return false}
    var amountOfIce: Double {return 170.0}
}