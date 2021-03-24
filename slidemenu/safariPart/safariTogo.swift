//
//  safariTogo.swift
//  temp_test1
//
//  Created by Jill on 2021/3/24.
//

import SwiftUI
import SafariServices

struct safariTogo: View {
    @State var show=false
    var body: some View {
        Button(action: {
            self.show.toggle()
        }, label: {
            Text("Button")
        })
        .sheet(isPresented: $show, content: {
            safari(myurl: "https://market.m.taobao.com/app/idleFish-F2e/widle-taobao-rax/page-detail?wh_weex=true&wx_navbar_transparent=true&id=640442218133&ut_sk=1.XvMoJ394MxUDAL2MITSPwpf3_12431167_1616569247404.Copy.detail.640442218133.3981487602&forceFlush=1")
        })
    }
}

struct safari:UIViewControllerRepresentable {
    var myurl:String
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<safari>) {
    }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<safari>) ->SFSafariViewController{
        let controller=SFSafariViewController(url: URL(string: myurl)!)
        return controller
    }
    
}

struct safariTogo_Previews: PreviewProvider {
    static var previews: some View {
        safariTogo()
    }
}
