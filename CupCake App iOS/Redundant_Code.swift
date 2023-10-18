//
//  Redundant_Code.swift
//  CupCake App iOS
//
//  Created by Shubham on 10/18/23.
//


//class User: ObservableObject, Codable {
//    @Published var name = "Shubham Kashyap"
//
//    enum CodingKeys: String, CodingKey {
//        case name = "name"
//    }
//
//    required init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        name = try container.decode(String.self, forKey: .name)
//    }
//
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(name, forKey: .name)
//    }
//
//}


//func loadData() async {
//    guard let url = URL(string: "https://itunes.apple.com/search?term=taylor+swift&entity=song") else {
//        print("Invalid URL")
//        return
//    }
//
//    do {
//        let (data, _) = try await URLSession.shared.data(from: url)
//        print(data)
//
//        if let decodedResponse = try? JSONDecoder().decode(Response.self, from: data) {
//            print(decodedResponse)
//            results = decodedResponse.results
//        }
//    } catch {
//        print(error.localizedDescription)
//    }
//}


//Form {
//    Section {
//        TextField("Username", text: $userName)
//        TextField("Email", text: $email)
//    }
//
//    Section {
//        Button("Create account") {
//            print("Creating account")
//        }
//    }
//    .disabled(userName.isEmpty || email.isEmpty)
//}

//AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { phase in
//    if let image = phase.image {
//        image
//            .resizable()
//            .scaledToFit()
//
//    } else if phase.error != nil {
//        Text("There was an error loading the image.")
//    } else {
//        ProgressView()
//    }
//}
//.frame(width: 200, height: 200)
//


//NavigationStack {
//    List(results, id: \.trackId) { item in
//        Text(item.trackName)
//            .font(.headline)
//        Text(item.collectionName)
//    }
//    .task {
//        await loadData()
//    }
//
//
//    .navigationTitle("Songs App")
//}

