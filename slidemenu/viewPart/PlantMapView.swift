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
                        .foregroundColor(.gray)
                    HStack{
                        ScrollView(.horizontal){
                            HStack(spacing:0){
                                goodsItem(str1: "绿萝盆栽植物花卉水培盆景观花绿植室内吸甲醛净化空气大绿箩包邮", imgname: "img4", price: 5.79, cardtype: 2, myurl: "https://m.tb.cn/h.4nMeEvp?sm=0d9111")
                                goodsItem(str1: "万年青盆栽植物粉黛银皇后室内好养绿植办公室四季常青水培小植物", imgname: "img3", price: 32.8, cardtype: 2, myurl: "https://m.tb.cn/h.4mB4wVu?sm=e6357e")
                                goodsItem(str1: "雾松绿植意境盆栽室内植物常春藤盆景万年青好养活四季办公室雾凇", imgname: "img1", price: 14.9, cardtype: 2, myurl: "https://m.tb.cn/h.4MSqkpe?sm=185711")
                                goodsItem(str1: "广东万年青水养花卉绿植盆栽新房装修吸甲醛净化空气四季常青树苗", imgname: "img2", price: 6.5, cardtype: 2, myurl: "https://m.tb.cn/h.4MSIFsG?sm=4dd498")
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
