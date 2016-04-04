//
//  Coffee.swift
//  CafeRecipe
//
//  Created by 박태현 on 2016. 4. 4..
//  Copyright © 2016년 DaveLee. All rights reserved.
//

import Foundation

class Coffee: Beverage, Hotable, Mixable, Coffeeable {
    dynamic let image: String = ""
    dynamic let name: String = ""
    dynamic let categoryName: String = ""
    dynamic var isLike: Bool = false
    dynamic var sugar: Double = 0.0
    dynamic let liquid: Double = 400.0
    dynamic var sugarContents: Double {
        get {
            return (sugar / (sugar + liquid)) * 100.0
        } set {
            self.sugar = (newValue / 100) * (self.liquid + self.sugar)
        }
    }
    dynamic var preparation: String {
        return isHot ?  "뜨거운물:\(liquid)ml, 설탕:\(sugar)g, 커피원두" : "차가운물:\(liquid)g, 설탕:\(sugar)g, 커피원두"
    }
    dynamic let recipe: String = ""
    dynamic let level: Int = 0
    dynamic let youtubeURL: String = ""
    dynamic let recipeImage: String = ""
    dynamic var calorie: Int = 0
    var color: Color =  Color.Red
}