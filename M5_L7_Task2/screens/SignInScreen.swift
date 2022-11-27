//
//  SignInScreen.swift
//  M5_L7_Task2
//
//  Created by Bekhruz Hakmirzaev on 27/11/22.
//

import SwiftUI

struct SignInScreen: View {
    @EnvironmentObject var status: Status
    
    @State var userid = ""
    @State var userpw = ""
    var body: some View {
        NavigationView{
            VStack{
                Spacer()
                Image("person").resizable()
                    .frame(width: 100,height: 100)
                TextField("User ID", text: $userid).frame(height: 45).padding(.leading, 10)
                    .background(Color(.systemGray5))
                    .cornerRadius(30)
                SecureField("User PW", text: $userpw).frame(height: 45).padding(.leading, 10)
                    .background(Color(.systemGray5))
                    .cornerRadius(30)
                Button(action: {
                    UserDefaults.standard.setValue("pdp", forKey: "userid")
                    status.listen()
                }, label: {
                    HStack{
                        Spacer()
                        Text("Sign In").foregroundColor(.white)
                        Spacer()
                    }
                        .frame(height: 45)
                        .background(.red)
                        .cornerRadius(30)
                })
                Spacer()
                HStack{
                    Text("Don't have an account?").foregroundColor(.blue)
                    NavigationLink(destination: SignUpScreen(), label: {
                        Text("SignUp").foregroundColor(.blue).font(.system(size: 18))
                    })
                }
            }.padding()
                .navigationBarTitle("Instagram", displayMode: .inline)
        }
    }
}

struct SignInScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignInScreen()
    }
}
