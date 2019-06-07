//
//  CircleImage.swift
//  SwiftUISample
//
//  Created by Amir Daliri on 6/7/19.
//  Copyright © 2019 Amir Daliri. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("me"))
    }
}
#endif
