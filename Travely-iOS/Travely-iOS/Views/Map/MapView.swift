//
//  MapView.swift
//  Travely-iOS
//
//  Created by 장서영 on 2022/04/08.
//

import SwiftUI
import MapKit
import BottomSheet

enum BookBottomSheetPosition: CGFloat, CaseIterable {
    case top = 0.9, bottom = 0.3, hidden = 0.05
}

struct MapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 36.391595274253774,
            longitude: 127.3635826842517
        ), span: MKCoordinateSpan(
            latitudeDelta: 0.1,
            longitudeDelta: 0.1
        )
    )
    
    @State var bottomSheetPosition: BookBottomSheetPosition = .bottom
    
    var body: some View {
        Map(coordinateRegion: $region)
            .bottomSheet(
                bottomSheetPosition: self.$bottomSheetPosition,
                options: [
                    .noBottomPosition,
                    .background({ AnyView(Color.init(uiColor: .mainColor!).opacity(0.8))}),
                    .dragIndicatorColor(.white),
                ], title: nil,
                content: {
                    MapListView()
                })
            .onAppear {
                bottomSheetPosition = .bottom
            }
            .onTapGesture {
                bottomSheetPosition = .bottom
            }
            .ignoresSafeArea()
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
