require 'spec_helper'

describe Playlist do
  subject do
    Playlist.create(name: "Playlist 2")
  end

  it {should have_many(:orders)}
  it "should have many songs" do
    song = Song.create(title: "Lovin It", artist: "Marian Hill", url: "https://soundcloud.com/marianhill/lovit-1", source: "SoundCloud", plays: 2, shares: 5, favorites: 10)
    termanology = Song.create(title: "Termanology", artist: "Take My Turn", url: "https://soundcloud.com/macmediapromo/termanology-f-action-bronson", source: "SoundCloud", plays: 4, shares: 7, favorites: 12)
    subject.songs << song << termanology
    subject.should have(2).songs
  end

  it "should have many songs" do
    lovin_it = Song.create(title: "Lovin It", artist: "Marian Hill", url: "https://soundcloud.com/marianhill/lovit-1", source: "SoundCloud", plays: 2, shares: 5, favorites: 10)
    termanology = Song.create(title: "Termanology", artist: "Take My Turn", url: "https://soundcloud.com/macmediapromo/termanology-f-action-bronson", source: "SoundCloud", plays: 4, shares: 7, favorites: 12)
    mean_streets = Song.create(title: "Mean Streets", artist: "Tennis", url: "https://soundcloud.com/tennisinc/mean-streets-1", source: "SoundCloud", plays: 7, shares: 12, favorites: 9)
    dreams = Song.create(title: "Dreams", artist: "wet", url: "https://soundcloud.com/wetnyc/dreams", source: "SoundCloud", plays: 11, shares: 22, favorites: 3)
    sand_fingers = Song.create(title: "Sand Through Fingers", artist: "Handbook", url: "https://soundcloud.com/handbook/handbook-sand-through-fingers", source: "SoundCloud", plays: 24, shares: 1, favorites: 5)
    white_tiger = Song.create(title: "White Tiger Remix", artist: "Izzy Bizu", url: "https://soundcloud.com/wantigga/white-tiger-wantigga-remix", source: "SoundCloud", plays: 7, shares: 32, favorites: 7)
    subject.songs << termanology << lovin_it << mean_streets << sand_fingers << white_tiger << dreams
    subject.should have(6).songs

    347.times do |i|
     subject.songs << Song.create(title: "#{i}White Tiger Remix", artist: "#{i}Izzy Bizu", url: "https://#{i}}soundcloud.com/wantigga/white-tiger-wantigga-remix", source: "SoundCloud", plays: 7, shares: 32, favorites: 7)
    end
    subject.songs.count.should == 353
    
    Song.all.map(&:id).each do |i|
      s = subject.songs.find(i)
      s.orders.delete(s.orders.first.id)
    end

    subject.songs.count.should == 0

  end




end
