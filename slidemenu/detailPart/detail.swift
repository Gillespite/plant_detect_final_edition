//
//  detail.swift
//  temp_test1
//
//  Created by Jill on 2021/3/24.
//

import SwiftUI

struct detail: View {
    @State var ismyshow=false
    @State var hh=60
    var mycolor:Color
    var mytitle:String="标题"
    var mydetail:String="Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 3)
                    .foregroundColor(mycolor)
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(mycolor)
                    .opacity(0.3)
                VStack{
                    HStack{
                        Text(mytitle)
                            .foregroundColor(.white)
                            .bold()
                            .padding(.leading,ismyshow==true ? 15:0)
                            .padding(.top,ismyshow==true ? 20:0)
                            .shadow(radius: 10)
                            .font(.system(size: ismyshow==true ? 25:20))
                        if ismyshow {
                            Spacer()
                        }
                        //Spacer()
                    }
                    if ismyshow {
                        Text(mydetail)
                            .fontWeight(.bold)
                            .font(.system(size: 20))
                            .padding(.horizontal)
                            .padding(.vertical,5)
                            .foregroundColor(.white)
                            .shadow(radius: 10)
                        Spacer()
                    }
                }
                
                    //.frame(alignment: isshow==true ? .topLeading : .center)
            }
        }
        .frame(minHeight:60)
        .frame(width:350)
        //.frame(height:CGFloat(hh))
        .padding(.horizontal)
        .onTapGesture {
            self.ismyshow.toggle()
//            if isshow {
//                hh=180
//            }else{
//                hh=60
//            }
        }
        .animation(.easeInOut)
    }
}
struct detailtestView: View {

    var body: some View {
        ScrollView{
            VStack{
                detail(mycolor: Color.blue,mytitle:"植物简介",mydetail:"万年青属 （拉丁文：Rohdea Roth）是被子植物门百合科下的一个属，该属物种多为多年生草本植物，该属的主要特征是：根具许多纤维根，并密生白色绵毛；叶为基生并且排成两列套迭成簇；花为肉质穗状花序并于叶腋抽出；花冠常为呈白色并高脚碟状或漏斗状；果实为具单颗种子的浆果球形。该属仅1种，分布于中国和日本。该属模式物种是万年青（Rohdea japonica (Thunb.) Roth）。该属是由德国医学家和植物学家阿尔布雷希特，威廉·罗斯（1757年1月6日 - 1834年10月16日）于1821年发现并设立。")
                detail(mycolor: Color.purple)
                detail(mycolor: Color.pink)
            }
        }
    }
}
struct detail_Previews: PreviewProvider {
    static var previews: some View {
        detailtestView()
    }
}
