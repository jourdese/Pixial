import Foundation
import Combine

struct Post: Codable, Identifiable {
    enum CodingKeys: String, CodingKey {
        case image
        case like_count
        case comment_count
        case view_count
        case description
        case profile_img
        case profile_name
        case profile_id
    }
    
    var id = UUID()  // Use stable ID
    var image: String
    var like_count: Int
    var comment_count: Int
    var view_count: Int
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
            self.posts = decoded
        } catch {
            print("❌ Failed to load posts.json:", error)
        }
    }
}
