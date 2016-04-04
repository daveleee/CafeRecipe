//
//  AppDelegate.swift
//  CafeRecipe
//
//  Created by 이대희 on 2016. 3. 31..
//  Copyright © 2016년 DaveLee. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        // 앱을 처음 실행했을때 제일 먼저 수행되는 함수
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
        // 앱이 비활성화 상태가 될 때 실행된다. 스택에 가장 먼저 쌓여서 다른 함수보다 먼저 실행된다(전화ㅡ, 홈버튼 등)
        // 앱을 사용중인데 전화가 왔을때.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        // 앱이 백그라운드로 넘어갈때 실행된다. 홈키 눌렀을때 앱이 뒤로 숨으니까 백그라운드 상태 ,
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
        // 앱이 백그라운드에서 다시 앱 화면으로 들어올때 실행되는 함수.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        // 전화가 왔다가 끊기고 바로 실행하고 있는 앱이 보이는 경우, 만약에 여기다 업데이사항 팝업을 올리면, 전화 받고 다시 켰을때 업데이트사항 또 뜨겟네....(확실한건 아님)
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // 앱이 완전히 종료될때 실행되는 함수.
    }


}

