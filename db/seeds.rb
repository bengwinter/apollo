playlist_1 = Playlist.create(name: "Playlist 1")
playlist_2 = Playlist.create(name: "Playlist 2")
playlist_3 = Playlist.create(name: "Playlist 3")

electronic = Genre.create(name: "Electronic")
dance = Genre.create(name: "Dance")
hip_hop = Genre.create(name: "Hip Hop")
acoustic = Genre.create(name: "Acoustic")
Genre.create(name: "Pop")
Genre.create(name: "Indie Pop")
Genre.create(name: "Alternative")
Genre.create(name: "Classic Rock")
Genre.create(name: "Jazz")
Genre.create(name: "R&B")
Genre.create(name: "Soul")
Genre.create(name: "Reggae")
Genre.create(name: "Rock")
Genre.create(name: "Soft Rock")
Genre.create(name: "Party")
Genre.create(name: "Ambien")

lovin_it = Song.create(title: "Lovin It", artist: "Marian Hill", url: "https://soundcloud.com/marianhill/lovit-1", source: "SoundCloud", plays: 2, shares: 5, favorites: 10)
whisky = Song.create(title: "Whisky", artist: "Marian Hill", url: "https://soundcloud.com/marianhill/whisky", source: "SoundCloud", plays: 3, shares: 7, favorites: 14)
eden = Song.create(title: "Eden", artist: "Ben Khan", url: "https://soundcloud.com/benkhan/eden", source: "SoundCloud", plays: 5, shares: 8, favorites: 21)
undiscovered = Song.create(title: "Undiscovered", artist: "Laura Welsh", url: "https://soundcloud.com/laurawelsh/undiscovered-1", source: "SoundCloud", plays: 8, shares: 12, favorites: 21)
summer = Song.create(title: "Summer", artist: "Paris Jones", url: "https://soundcloud.com/serendeee/summer-ft-april-kelly-b-a", source: "SoundCloud", plays: 15, shares: 15, favorites: 14)
termanology = Song.create(title: "Termanology", artist: "Take My Turn", url: "https://soundcloud.com/macmediapromo/termanology-f-action-bronson", source: "SoundCloud", plays: 4, shares: 7, favorites: 12)
mean_streets = Song.create(title: "Mean Streets", artist: "Tennis", url: "", source: "SoundCloud", plays: 7, shares: 12, favorites: 9)
dreams = Song.create(title: "Dreams", artist: "wet", url: "https://soundcloud.com/wetnyc/dreams", source: "SoundCloud", plays: 11, shares: 22, favorites: 3)
sand_fingers = Song.create(title: "Sand Through Fingers", artist: "Handbook", url: "https://soundcloud.com/handbook/handbook-sand-through-fingers", source: "SoundCloud", plays: 24, shares: 1, favorites: 5)
white_tiger = Song.create(title: "White Tiger Remix", artist: "Izzy Bizu", url: "https://soundcloud.com/wantigga/white-tiger-wantigga-remix", source: "SoundCloud", plays: 7, shares: 32, favorites: 7)

hip_hop.songs << lovin_it << whisky << summer << termanology
electronic.songs << eden << undiscovered << mean_streets << dreams << sand_fingers << white_tiger
playlist_1.songs << lovin_it << whisky << eden
playlist_2.songs << undiscovered << summer
playlist_3.songs << mean_streets << dreams << sand_fingers << white_tiger

