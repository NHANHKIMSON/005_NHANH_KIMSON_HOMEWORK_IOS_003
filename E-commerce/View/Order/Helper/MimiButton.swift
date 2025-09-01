import SwiftUI
struct MiniButton: View {
    var text: String = ""
    var varain: Color = .clear
    var action: () -> Void = {}
    var body: some View {
        Button(action: {
            action()
        }, label: {
            Text(text)
                .foregroundStyle(varain)
                .padding(8)
                .overlay{
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(varain, lineWidth: 2)
                }
            
        })
    }
}
