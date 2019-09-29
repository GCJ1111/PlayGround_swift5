//: [Previous](@previous)
import SystemConfiguration.CaptiveNetwork

import UIKit

func getMAC(){
    print(CNCopySupportedInterfaces())
    if CNCopySupportedInterfaces() != nil{
        let interfaces:NSArray = CNCopySupportedInterfaces()!
        print(interfaces)
    }
    else{
        print("interface = nil")
        
    }
//    var ssid: String?
//
//    var mac: String?
//    if interfaces != nil{
//    for sub in interfaces
//    {
////        print(sub)
//
//        if let dict = CFBridgingRetain(CNCopyCurrentNetworkInfo(sub as! CFString))
//
//        {
//
////            ssid = dict["SSID"] as? String
////            mac = dict["BSSID"] as? String
//
//        }
//
//    }
//    }
}
getMAC()
//: [Next](@next)


