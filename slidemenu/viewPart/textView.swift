//
//  textView.swift
//  slidemenu
//
//  Created by Jill on 2021/3/13.
//

import SwiftUI


var getget = [String:String]()

struct textView: View {
    @State var name:String="test1"
    @State var str:String="test"
    @State var url:String="temp"
    var body: some View {
        ScrollView{
            VStack{
                ZStack{
                    NetworkImage(url:URL(string:url))
                        .aspectRatio(contentMode: .fill)
                        .frame(width:450,height:280)
                        .clipped()
                        .padding(.top,-20)
                        .overlay(
                            Color.black.opacity(0.4)
                                .padding(.top,-30)
                        )
                    HandleBar()
                        .padding(.top,-120)
                }.overlay(
                    ZStack{
                        Text(name)
                            .fontWeight(.bold)
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    }
                )
                VStack{
                    Text("植物简介")
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .foregroundColor(.gray)
                        .lineSpacing(8)
                        .padding(.top,15)
                        .shadow(radius: 30)
                    Text(str)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding()
                        .foregroundColor(.gray)
                        .lineSpacing(8)
                        .shadow(radius: 30)
                    if let str2=getget[name]{
                        VStack{
                            Text("病虫害防治")
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                                .padding(.top)
                                //.foregroundColor(.gray)
                                .lineSpacing(8)
                                .shadow(radius: 30)
                            Text(str2)
                                .fontWeight(.bold)
                                .font(.system(size: 20))
                                .padding()
                                //.foregroundColor(.gray)
                                .lineSpacing(8)
                                .shadow(radius: 30)
                        }
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(15)
                    }
                    Spacer(minLength: 20)
                }
                .frame(width: 370)
            }
        }
    }
}

func filldata() {
    getget["玉蝶"] =
    """
    烂根
    烂根最主要是就是因为水浇多了或环境太过湿润而产生的真菌引起。
    徒长
    缺少日照，光线过暗，浇水又相对较多。
    黑腐
    土壤不够透气，温度太高的时候浇水。还有一个最重要的原因就是病虫害。
    """
    getget["海棠花"] =
    """
    主要病虫害有海棠锈病，要及时喷布波尔多液或粉锈宁。腐烂病，喷施波尔多液或石硫合剂。蚜虫，可用杀螟松或乐果防治。山楂叶螨，可用三氯杀螨醇防治
    """
    getget["榆叶梅"] =
    """
    病害
    榆叶梅常见的病害有：榆叶梅黑斑病和根癌病、黑斑病、叶斑病。
    榆叶梅黑斑病防治方法：加强水肥管理，提高植株的抗病能力牷秋末将落叶清理干净，并集中烧毁牷春季萌芽前喷洒一次5波美度石硫合剂进行预防，如有发生可用80%代森锌可湿性颗粒700倍液，或70%代森锰锌500倍液进行喷雾，每7天喷施一次，连续喷3至4次可有效控制病情。
    黑斑病防治方法：1）种植时要选择优良抗病品种，增加植物检疫。2）在秋天植物休眠期，要及时对园林种植地进行清除枯枝、落叶等杂物，并及时集中烧毁。3）加强栽培植物的大田管理工作，时常对植株进行整形修剪，剪枝叶进行通风透光，可减轻病害的发生。4）春季在植株新叶发生并快展开时，及时喷洒5%氟硅唑或75%百菌清600倍液，或85%代森锌400倍液，15~20天喷洒1次，要连喷3~4次，以达到彻底防病根除的效果。
    根癌病防治方法：在种子、种苗运输、栽培等过程中要加强对其检疫，一定要严防带病种子和苗木进入栽培地；栽培种植之前要及时防治各类地下害虫；在发病的植株上，要用消毒的刀具将其瘤状物切除，并随后在病造上涂白或涂波尔多液等；使用的嫁接工具也要完全消毒后在使用等。
    叶斑病防治方法：1）到了冬季结合植株修剪及枝叶整理，及时清除发病时留下的病斑及残留物，并集中烧毁。2）在植物生长盛期要加强田间管理，雨季要注意及时排水，适量施肥，以增强植株的抗病能力。3）在植株发病初期，要及时喷洒75%甲基托布津可湿性粉剂900~1400倍液，或75%百菌清可湿性粉剂800倍液喷洒。
    虫害
    榆叶梅常见的虫害有：蚜虫、红蜘蛛、刺蛾、介壳虫、叶跳蝉、芳香木蠹蛾、天牛等。
    蚜虫。其为害期在嫩叶上为害，轻的危害，使植株生长受到影响。严重的会造成植株枯萎，叶片大面积死亡，最后整个植株死亡。
    防治方法：如果发现大量蚜虫发生危害时，应及进行化学防治，防治方法：用1∶10的比例，泡制烟叶水，大约泡制5h后整株喷洒1次。可用铲蚜1500倍液杀灭蚜虫，或用1∶3∶300的配比，调制出洗衣粉、尿素、水的溶液进行整株喷洒。约2~3次，或用12%氧化乐果乳剂900倍液或马拉硫磺乳剂1100~1600倍液喷洒1次，或敌敌畏乳油900倍液或高搏（70%吡虫啉）分散粒剂14000~19000倍液喷洒1次。
    红蜘蛛。红蜘蛛繁殖较快，杂草，植物枝干等环境均可繁殖，其危害植物整个植株，可几代混合在植株上同时危害，其危害严重时整个植株死亡，对磺+食盐+水（比例10∶1∶1∶40）搅拌均匀后使用，涂“白”既可阻止老熟幼虫下树在浅土层越冬，又可在春季阻止樟丛螟的幼虫上树。40%三氯杀螨醇乳油1500倍液杀灭红蜘蛛。
    蓑蛾。蓑蛾在高温、干燥气候条件下容易对植株发生危害，其主要危害植物叶片。防治方法：1）少量发生时，可人工摘除虫、卵，并集中烧毁。2）虫害大发生时，可在幼虫发生期喷洒杀灭菊酯2050倍液，或85%敌敌畏乳油900倍液，或80%敌百虫晶体1500倍液。
    用Bt乳剂1000倍液喷杀刺蛾；用2.5%敌杀死乳油3000倍液杀灭叶跳蝉；杀灭芳香木蠹蛾可用锌硫磷400倍液注入虫道后用泥封堵虫孔，以熏杀幼虫，也可采取根部埋施呋喃丹的方法来灭杀；可用绿色威雷500倍液来防治天牛。
    """
    getget["花叶万年青"] =
    """
    主要有细菌性叶斑病、褐斑病和炭疽病危害，可用50%多菌灵可湿性粉剂500倍液喷洒。有时发生根腐病和茎腐病危害，除注意通风和减少湿度外，可用75%百菌清可湿性粉剂800倍液喷洒防治。
    """
    getget["龙葵"] =
    """
    主要有细菌性叶斑病、褐斑病和炭疽病危害，可用50%多菌灵可湿性粉剂500倍液喷洒。有时发生根腐病和茎腐病危害，除注意通风和减少湿度外，可用75%百菌清可湿性粉剂800倍液喷洒防治。
    """
    getget["冰叶日中花"] =
    """
    该种病害较少，主要虫害有蚜虫，白飞虱和金龟子。优质高产栽培中应当以预防为主，尽量不要使用农药。虫害以物理防治清除为主，通过搭建防虫网，悬挂黄、蓝粘虫板进行防治。
    栽培设置中需注意勤通风除湿，以降低真菌性和细菌性病害的发病机会。
    冰叶日中花天生自带的抗病虫害基因比别的蔬菜强大，所以在其生长过程中，不用喷农药，只需施放少量的肥料就可以健康生长。这也是它可以直接鲜食的原因，也因此它赢得绿色蔬菜的美誉
    """
}

struct test2: View {
    @State var good=true
    var body: some View {
        Color.pink
            .ignoresSafeArea()
            .sheet(isPresented: $good) {
                textView(name: "冰叶日中花", str: "鸡蛋花(学名：Plumeria rubra 'Acutifolia')是夹竹桃科、鸡蛋花属落叶灌木或小乔木。枝条粗壮，带肉质；叶厚纸质；中脉在叶面凹入，侧脉两面扁平。聚伞花序顶生；总花梗三歧，肉质；花梗淡红色；花萼裂片小，卵圆形；花冠外面白色，花冠筒外面及裂片外面左边略带淡红色斑纹，花冠内面黄色；花冠裂片阔倒卵形，顶端圆，基部向左覆盖；雄蕊着生在花冠筒基部，花丝极短，花药长圆形。蓇葖双生，广歧，圆筒形，向端部渐尖；种子斜长圆形，扁平，顶端具膜质的翅。花期5-10月，果期栽培极少结果，一般为7-12月。鸡蛋花性喜高温，湿润和阳光充足的环境，但也能在半阴的环境下生长。耐干旱，忌涝渍，抗逆性好。耐寒性差，最适宜生长的温度为20-26℃，越冬期间长时间低于8℃易受冷害。原产于墨西哥；已广植于亚洲热带及亚热带地区。中国广东、广西、云南、福建等省区有栽培，在云南南部山中有逸为野生的。鸡蛋花具有极高的观赏价值。整株树显得婆娑匀称、自然美观；树干苍劲挺拔，很有气势；树冠如盖，满树绿色；开花后，满树繁花，花叶相衬，流彩溢光花，清香淡雅。花含芳香油，可熏制香茶，提取香精，制成高级化妆品、香皂和作食品添加剂。木材白色，质轻而软，用于制乐器、餐具或家具。鸡蛋花的鲜花晒干，泡水饮用，可预防中暑等；叶片捣烂外敷，可治淤伤或溃疡；树皮及枝叶所含的乳汁有毒，外敷可医治疥疮及红肿等症。(概述图参考来源：)", url: "https://bkimg.cdn.bcebos.com/pic/962bd40735fae6cd7b894a09f9fa182442a7d933a10b")
            }
    }
}

struct textView_Previews: PreviewProvider {
    static var previews: some View {
        test2()
            .onAppear(perform: {
                filldata()
            })
    }
}
