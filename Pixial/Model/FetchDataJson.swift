import Foundation
import Combine

struct Post: Codable, Identifiable {
    enum CodingKeys: String, CodingKey {
        case image
        case star_count
        case comment_count
        case flag_green_count
        case flag_red_count
        case react_count
        case description
        case profile_img
        case profile_name
        case profile_id


    }
    
    var id = UUID()
    var image: String
    var star_count: Int
    var comment_count: Int
    var react_count: Int
    var flag_green_count: Int
    var flag_red_count: Int
    var description: String
    var profile_img: String
    var profile_name: String
    var profile_id: String

}

class ReadJsonData: ObservableObject {
    @Published var posts: [Post] = []
    
    init() {
        loadData()
    }
    
    func loadData() {
        guard let url = Bundle.main.url(forResource: "posts", withExtension: "json") else {
            print("❌ posts.json not found in bundle")
            return
        }

        do {
            let data = try Data(contentsOf: url)
            let decoded = try JSONDecoder().decode([Post].self, from: data)
            DispatchQueue.main.async {
                self.posts = decoded
            }
        } catch {
            print("❌ Failed to load posts.json: \(error)")
        }
    }


}
