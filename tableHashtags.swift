//
//  tableHashtags.swift
//  TinderClone
//
//  Created by Shivam Nanda on 11/12/22.
//

import SwiftUI

struct tableHashtags: View {
    let data:[String] = ["#Basketball","#Soccer","#Democrats"]
    var body: some View {

            
            List{
                ForEach(0..<self.data.count,id: \.self){ i in
                    
                    NavigationLink(destination: MessagesView()){
                    HStack{
                        Text(self.data[i])
                        Image("")
                    }
                        
                    
                    }
                    
                }
            }
        }
    }


struct tableHashtags_Previews: PreviewProvider {
    static var previews: some View {
        tableHashtags()
    }
}
