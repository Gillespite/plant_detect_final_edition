//
//  nav_root.swift
//  slidemenu
//
//  Created by Jill on 2021/3/12.
//

import SwiftUI
import MapKit

struct nav_root: View {
    @EnvironmentObject var model:dataModel
    @State var index:Int=0
    var body: some View {
        VStack{
            ZStack{
                if index==0{
                    PlantDetectView()
                }else if index==1{
                    PlantMapView()
                }else if index==2{
                    storeView()
                    //tab3()
                }else if index==3{
                    tab4()
                }
            }
            TabBar(index:$index)
                .animation(.spring())
        }
        .onAppear(perform: {
            model.locationManager.delegate=model.mapmodel
            model.locationManager.requestWhenInUseAuthorization()
            filldata()
            filldata2()
        })
    }
}

struct TabBar:View {
    @Binding var index:Int
    var body:some View{
        HStack(spacing:15){
            TabBarItem(index: $index, myindex: 0, iconName: "magnifyingglass.circle.fill", myName: "识花",mycolor:Color.green)
            TabBarItem(index: $index, myindex: 1, iconName: "map.fill", myName: "附近植物",mycolor:Color.blue)
            TabBarItem(index: $index, myindex: 2, iconName: "hands.sparkles.fill", myName: "商城",mycolor:Color.purple)
            TabBarItem(index: $index, myindex: 3, iconName: "person.fill", myName: "我的",mycolor:Color.yellow)
        }
        .padding(.bottom,8)
        .frame(width:UIScreen.main.bounds.width)
    }
}
struct TabBarItem: View {
    @Binding var index:Int
    var myindex:Int
    var iconName:String
    var myName:String
    var mycolor:Color
    var body: some View {
        HStack{
            Image(systemName: iconName).resizable().frame(width: 35, height: 35)
            Text(self.index==myindex ? myName:"").fontWeight(.bold).font(.system(size: 17))
        }
        .foregroundColor(self.index == myindex ? mycolor:Color.black )
        .padding(10)
        //.background(self.index == myindex ? mycolor.opacity(0.5):Color.clear)
        //.cornerRadius(15)
        //.clipShape(Capsule())
        .onTapGesture {
            self.index=myindex
        }
    }
}



struct nav_root_Previews: PreviewProvider {
    static var previews: some View {
        nav_root()
    }
}
