//
//  TalkBox.swift
//  ProtocolDefaultImplementationSample
//
//  Created by jiwon Yoon on 2023/02/09.
//

import Foundation

protocol TalkProtocol {
    var language: String { get set }
    
    func getLanguage()
}

extension TalkProtocol {
    func getLanguage() {
        print("---> I speak \(language)")
    }
}

struct Korean: TalkProtocol {
    var language: String
}

struct American: TalkProtocol {
    var language: String
}

