import SwiftUI

struct SubHome: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 16){
                Carousel()
                    .aspectRatio(16/9 ,contentMode: .fill)
                HStack{
                    Text("New Arrival")
                        .font(.title2)
                        .bold()
                    Spacer()
                    Button("See All"){
                        
                    }
                }
                .padding(.horizontal)
            }
            .padding()
            CardGridView()
        }
    }
}

#Preview {
    SubHome()
}
