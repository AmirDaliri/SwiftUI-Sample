//
//  UserData.swift
//  SwiftUISample
//
//  Created by Amir Daliri on 6/7/19.
//  Copyright © 2019 Amir Daliri. All rights reserved.
//

import Combine
import SwiftUI

final class UserData: BindableObject {
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    
    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
}
