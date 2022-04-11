var user = { (name: String) in
    print("Welcome \(name)")
}
user("Roma")
user("Dhayana")

class MediaItem {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Movie: MediaItem {
    var director: String
    init(name: String, director: String) {
        self.director = director
        super.init(name: name)
    }
}

class Song: MediaItem {
    var artist: String
    init(name: String, artist: String) {
        self.artist = artist
        super.init(name: name)
    }
}

let library = [
    Movie(name: "Golmaal", director: "Rohit Shetty"),
    Song(name: "Main Koi aisa geet gaoon", artist: "Jatin Lalit"),
    Movie(name: "Phir hera Pheri", director: "Neeraj Vora"),
    Song(name: "Shrivalli", artist: "Himesh Reshamiya"),
    Movie(name: "rrr", director: "Neeraj Vora"),
]

var movieCount = 0
var songCount = 0

for item in library {
    if item is Movie {
        movieCount += 1
    } else if item is Song {
        songCount += 1
    }
}

for item in library {
    if let movie = item as? Movie {
        print("Movie \(movie.name)")
    } else if let song = item as? Song {
        print("Song \(song.name)")
    }
}
print("movieCount \(movieCount) songCount \(songCount)")
