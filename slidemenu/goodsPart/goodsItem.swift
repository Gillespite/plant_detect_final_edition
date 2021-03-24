//
//  goodsItem.swift
//  temp_test1
//
//  Created by Jill on 2021/3/24.
//

import SwiftUI

struct goodsItem: View {
    var str1:String
    var imgname:String
    var price:Double
    var cardtype:Int=1
    var body: some View {
        if cardtype == 1{
            VStack{
                HStack(){
                    Image(imgname)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 130, height: 130, alignment: .leading)
                        .clipped()
                        .cornerRadius(10)
                        .padding(10)
                    Spacer()
                    VStack{
                        Text(str1)
                            .lineLimit(2)
                        Spacer(minLength: 5)
                        HStack{
                            Text("¥"+String(format: "%.2f", price))
                                .bold()
                                .font(.system(size: 20))
                                .foregroundColor(.red)
                            Spacer()
                        }
                        .padding(.leading,5)
                        Spacer(minLength: 5)
                        HStack{
                            Text("120条评价 95%好评")
                                .foregroundColor(.gray)
                                .font(.system(size: 15))
                            Spacer()
                        }
                        .padding(.leading,5)
                        HStack{
                            Text("悠栽官方旗舰店")
                                .foregroundColor(.gray)
                                .font(.system(size: 15))
                            Spacer()
                        }
                        .padding(.leading,5)
                        
                    }
                    .padding(.leading,-10)
                    .padding(.top,16)
                    .padding(.trailing,10)
                    .padding(.bottom,16)
                }
                .frame(height:150)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 10)
                .padding(.horizontal)
            }
        }
        
        if cardtype == 2{
            VStack{
                Image(imgname)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 130, height: 100, alignment: .leading)
                    .clipped()
                    //.cornerRadius(10)
                    //.padding(.top,-10)
                Spacer(minLength: 0)
                Text(str1)
                    .lineLimit(2)
                    .font(.system(size: 15))
                    //.padding(.top,-50)
                HStack{
                    Text("¥"+String(format: "%.2f", price))
                        .bold()
                        .font(.system(size: 15))
                        .foregroundColor(.red)
                        .padding(.leading,5)
                    Spacer()
                }
                //.padding(.top,-30)
                Spacer()
            }
            .frame(width:130, height: 170)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 10)
            .padding(.leading,10)
        }
        
    }
}

struct testview:View{
    var body: some View{
        VStack{
            ScrollView(.horizontal){
                HStack{
                    goodsItem(str1: "万年青绿植盆栽四季常青植物室内大型家庭花卉客厅吸甲醛净化空气 30cm万年青10颗 含盆", imgname: "img1", price: 35.00,cardtype:2)
                    goodsItem(str1: "万年青绿植盆栽四季常青植物室内大型家庭花卉客厅吸甲醛净化空气 30cm万年青10颗 含盆", imgname: "img1", price: 35.00,cardtype:2)
                    goodsItem(str1: "万年青绿植盆栽四季常青植物室内大型家庭花卉客厅吸甲醛净化空气 30cm万年青10颗 含盆", imgname: "img1", price: 35.00,cardtype:2)
                    goodsItem(str1: "万年青绿植盆栽四季常青植物室内大型家庭花卉客厅吸甲醛净化空气 30cm万年青10颗 含盆", imgname: "img1", price: 35.00,cardtype:2)
                }
                
            }
            
            ScrollView{
                VStack{
                    goodsItem(str1: "红豆自营水培植物花卉盆栽绿植盆景发财树碧玉栀子花金边吊兰常春藤客厅绿萝红豆杉芦荟文竹卧室客厅桌面花卉 【划算套装A×6盆】", imgname: "img2", price: 28.98,cardtype:1)
                    goodsItem(str1: "盆栽小番茄 DIY趣味种植盆栽 可食用果蔬种子 美味室内阳台种植 幼儿园儿童玩具好种易活", imgname: "img3", price: 43.26,cardtype:1)
                    goodsItem(str1: "浓香型兰花苗大花蕙兰墨兰建兰花卉盆栽绿植室内植物盆景兰花盆栽 金太子 3苗【包成活】+肥料生根粉", imgname: "img4", price: 74.58,cardtype:1)
                    goodsItem(str1: "万年青绿植盆栽四季常青植物室内大型家庭花卉客厅吸甲醛净化空气 30cm万年青10颗 含盆", imgname: "img1", price: 35.00,cardtype:1)
                    goodsItem(str1: "红豆自营水培植物花卉盆栽绿植盆景发财树碧玉栀子花金边吊兰常春藤客厅绿萝红豆杉芦荟文竹卧室客厅桌面花卉 【划算套装A×6盆】", imgname: "img2", price: 28.98,cardtype:1)
                    goodsItem(str1: "盆栽小番茄 DIY趣味种植盆栽 可食用果蔬种子 美味室内阳台种植 幼儿园儿童玩具好种易活", imgname: "img3", price: 43.26,cardtype:1)
                    goodsItem(str1: "浓香型兰花苗大花蕙兰墨兰建兰花卉盆栽绿植室内植物盆景兰花盆栽 金太子 3苗【包成活】+肥料生根粉", imgname: "img4", price: 74.58,cardtype:1)
                }
            }
            
        }.background(Color.white.opacity(0.3))
    }
}

struct goodsItem_Previews: PreviewProvider {
    static var previews: some View {
        testview()
    }
}
