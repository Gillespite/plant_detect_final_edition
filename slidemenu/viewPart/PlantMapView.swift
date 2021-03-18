//
//  Home.swift
//  dick1
//
//  Created by Jill on 2021/3/12.
//

import SwiftUI
import CoreLocation

struct PlantMapView: View {
    @EnvironmentObject var model:dataModel
    
    //@StateObject var mapData=MapViewModel()
    //@State var locationManager=CLLocationManager()
    var body: some View {
        ZStack{
            MapView()
                .environmentObject(model.mapmodel)
                .ignoresSafeArea(.all,edges:.all)
            
            VStack{
                HStack{
                    Text("当前在成都市")
                        .padding()
                        .font(.system(size: 30))
                        .background(Color.blue.opacity(0.3))
                        .cornerRadius(20)
                        //.opacity(0.3)
                        .frame(maxWidth:.infinity,alignment: .topLeading)
                        .padding(.horizontal)
                    VStack{
                        Button(action: model.mapmodel.focusLocation, label: {
                            Image(systemName: "location.fill")
                                .font(.title2)
                                .padding(10)
                                .background(Color.primary)
                                .clipShape(Circle())
                        })
                        Button(action: model.mapmodel.updateMapType, label: {
                            Image(systemName: model.mapmodel.mapType == .standard ? "network":"map")
                                .font(.title2)
                                .padding(10)
                                .background(Color.primary)
                                .clipShape(Circle())
                        })
                    }
                    .frame(alignment: .bottomTrailing)
                    .padding(.horizontal)
                }
                
                Spacer()
                VStack{
                    Text("附近的人都在养")
                        .frame(alignment:.leading)
                        .font(.system(size: 20))
                        .padding(.top,5)
                        .padding(.bottom,-5)
                        .foregroundColor(.blue)
                    HStack{
                        ScrollView(.horizontal){
                            HStack(spacing:0){
                                buyitem(itemname: "p1")
                                buyitem(itemname: "p2")
                                buyitem(itemname: "p3")
                                buyitem(itemname: "p4")
                                buyitem(itemname: "p5")
                                buyitem(itemname: "p6")
                                buyitem(itemname: "p7")
                            }
                        }
                        
                    }
                }
                .background(Color.white.opacity(0.8))
                
                //.background(Color.black.opacity(0.3))
            }
        }
        .onAppear(perform: {
            model.locationManager.delegate=model.mapmodel
            model.locationManager.requestWhenInUseAuthorization()
            model.mapmodel.focusLocation()
        })
        .alert(isPresented: $model.mapmodel.permissionDenied, content: {
            Alert(title: Text("没有访问权限"),message: Text("请在设置中打开位置权限"),dismissButton: .default(Text("打开设置"),action: {
                UIApplication.shared.open(URL(string: UIApplication.openSettingsURLString)!)
            }))
        })
    }
}

struct buyitem: View {
    var itemname:String
    var body: some View {
        Image(itemname)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 100*2.3, height: 100)
            .cornerRadius(10)
            .padding(.bottom,5)
            .padding(.leading,3)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        PlantMapView()
    }
}
