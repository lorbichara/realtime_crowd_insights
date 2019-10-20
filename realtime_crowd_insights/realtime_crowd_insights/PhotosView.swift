//
//  PhotosView.swift
//  realtime_crowd_insights
//
//  Created by Lorraine Bichara Assad on 9/27/19.
//  Copyright © 2019 Miguel Bazán. All rights reserved.
//

import SwiftUI

struct PhotosView: View {
    @State var image: UIImage? = nil
    @State var imageSourceType: String? = "photo library"

    var body: some View {
        ImageViewController(image: $image, imageSourceType: $imageSourceType)
    }
}

struct PhotosView_Previews: PreviewProvider {
    static var previews: some View {
        PhotosView()
    }
}
