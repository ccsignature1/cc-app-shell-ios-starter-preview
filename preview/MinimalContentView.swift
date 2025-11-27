import SwiftUI

struct ContentView: View {
    @State private var messages: [String] = [
        "Welcome to your CC App Shell.",
        "This is just a preview snippet!",
    ]
    
    @State private var inputText: String = ""
    
    var body: some View {
        VStack {
            ScrollView {
                ForEach(messages, id: \.self) { msg in
                    Text(msg)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(12)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                }
            }
            
            HStack {
                TextField("Type here…", text: $inputText)
                    .textFieldStyle(.roundedBorder)
                
                Button {
                    messages.append(inputText)
                    inputText = ""
                } label: {
                    Image(systemName: "paperplane.fill")
                }
                .padding(.horizontal)
            }
            .padding()
        }
    }
}
