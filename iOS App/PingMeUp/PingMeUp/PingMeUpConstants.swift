//
//  PingMeUpConstants.swift
//  PingMeUp
//
//  Created by Isaac Albets Ramonet on 13/02/16.
//  Copyright © 2016 shippo. All rights reserved.
//

import Foundation

extension PingMeUpClient {

    // MARK: Components
    struct Components {
        static let URL = "http://units.d8u.us/summary/?url="
    }
    
    // MARK: Errors
    struct Errors {
        static let Domain = "SummaryClient"
        static let NoRecords = "No objects found."
    }
    
    // MARK: JSONResponseKeys
    struct JSONResponseKeys {
        static let Error = "error"
        static let Summary = "summary"
        static let Sumy = "sumy_sumary"
        static let URL = "url"
    }

}