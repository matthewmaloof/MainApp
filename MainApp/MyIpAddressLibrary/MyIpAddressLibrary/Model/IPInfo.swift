//
//  IPInfo.swift
//  FindMyIP
//
//  Created by Matthew Maloof on 10/30/23.
//

import Foundation

struct IPInfo: Decodable, Equatable {
    let ip: String
    let network: String
    let version: String
    let city: String
    let region: String
    let region_code: String
    let country: String
    let country_name: String
    let country_code: String
    let country_code_iso3: String
    let country_capital: String
    let country_tld: String
    let continent_code: String
    let in_eu: Bool
    let postal: String
    let latitude: Double
    let longitude: Double
    let timezone: String
    let utc_offset: String
    let country_calling_code: String
    let currency: String
    let currency_name: String
    let languages: String
    let country_area: Double
    let country_population: Int
    let asn: String
    let org: String
}
