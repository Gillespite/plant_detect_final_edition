//
//  storeView.swift
//  slidemenu
//
//  Created by Jill on 2021/3/24.
//

import SwiftUI

struct storeView: View {
    var body: some View {
        VStack{
            
            VStack{
                HStack{
                    Image("logo")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 40,height: 40)
                }
                //.frame(height: 20)
                HStack{
                    ZStack{
                        RoundedRectangle(cornerRadius: 10)
                            .stroke()
                            .foregroundColor(.green)
                        HStack{
                            Image(systemName: "magnifyingglass")
                                .padding(.leading,5)
                            Text("儿童种植盆栽")
                            Spacer()
                        }.foregroundColor(.gray)
                    }.padding(.leading,8)
                    
                    HStack {
                        Text("搜索")
                            .fontWeight(.semibold)
                        //.font(.title)
                    }
                    .padding(.vertical, 10)
                    .padding(.horizontal,20)
                    //.padding()
                    .foregroundColor(.white)
                    .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
                    .cornerRadius(10)
                    .padding(.vertical, 10)
                    Spacer()
                }.frame(width: 350, height: 40, alignment: .center)
            }
            
            ScrollView{
                Spacer(minLength: 5)
                VStack{
                    goodsItem(str1: "绿萝盆栽植物花卉水培盆景观花绿植室内吸甲醛净化空气大绿箩包邮", imgname: "img4", price: 5.79, cardtype: 1, myurl: "https://m.tb.cn/h.4nMeEvp?sm=0d9111")
                    goodsItem(str1: "万年青盆栽植物粉黛银皇后室内好养绿植办公室四季常青水培小植物", imgname: "img3", price: 32.8, cardtype: 1, myurl: "https://m.tb.cn/h.4mB4wVu?sm=e6357e")
                    goodsItem(str1: "雾松绿植意境盆栽室内植物常春藤盆景万年青好养活四季办公室雾凇", imgname: "img1", price: 14.9, cardtype: 1, myurl: "https://m.tb.cn/h.4MSqkpe?sm=185711")
                    goodsItem(str1: "广东万年青水养花卉绿植盆栽新房装修吸甲醛净化空气四季常青树苗", imgname: "img2", price: 6.5, cardtype: 1, myurl: "https://m.tb.cn/h.4MSIFsG?sm=4dd498")
                    goodsItem(str1: "绿萝盆栽植物花卉水培盆景观花绿植室内吸甲醛净化空气大绿箩包邮", imgname: "img4", price: 5.79, cardtype: 1, myurl: "https://m.tb.cn/h.4nMeEvp?sm=0d9111")
                    goodsItem(str1: "万年青盆栽植物粉黛银皇后室内好养绿植办公室四季常青水培小植物", imgname: "img3", price: 32.8, cardtype: 1, myurl: "https://market.m.taobao.com/app/idleFish-F2e/widle-taobao-rax/page-detail?wh_weex=true&wx_navbar_transparent=true&id=625343162019&ut_sk=1.XvMoJ394MxUDAL2MITSPwpf3_12431167_1616573081392.Copy.detail.625343162019.3981487602&forceFlush=1")
                    goodsItem(str1: "雾松绿植意境盆栽室内植物常春藤盆景万年青好养活四季办公室雾凇", imgname: "img1", price: 14.9, cardtype: 1, myurl: "https://m.tb.cn/h.4MSqkpe?sm=185711")
                    goodsItem(str1: "广东万年青水养花卉绿植盆栽新房装修吸甲醛净化空气四季常青树苗", imgname: "img2", price: 6.5, cardtype: 1, myurl: "https://m.tb.cn/h.4MSIFsG?sm=4dd498")
                }
            }
        }
        
        //testview()
        //Text("Hello, World!")
    }
}
//1.绿萝盆栽植物花卉水培盆景观花绿植室内吸甲醛净化空气大绿箩包邮 5.79
//2.万年青盆栽植物粉黛银皇后室内好养绿植办公室四季常青水培小植物 32.8
//3.雾松绿植意境盆栽室内植物常春藤盆景万年青好养活四季办公室雾凇 14.9
//4.广东万年青水养花卉绿植盆栽新房装修吸甲醛净化空气四季常青树苗 6.5

//https://m.tb.cn/h.4nMeEvp?sm=0d9111
//https://m.tb.cn/h.4mB4wVu?sm=e6357e
//https://m.tb.cn/h.4MSqkpe?sm=185711
//https://m.tb.cn/h.4MSIFsG?sm=4dd498

struct storeView_Previews: PreviewProvider {
    static var previews: some View {
        storeView()
    }
}
