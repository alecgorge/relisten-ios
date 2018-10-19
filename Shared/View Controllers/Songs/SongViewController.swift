//
//  SongViewController.swift
//  Relisten
//
//  Created by Alec Gorge on 9/20/17.
//  Copyright © 2017 Alec Gorge. All rights reserved.
//

import Foundation

import UIKit

import Siesta
import AsyncDisplayKit
import SINQ

class SongViewController: ShowListViewController<SongWithShows> {
    let song: Song
    
    public required init(artist: Artist, song: Song) {
        self.song = song
        
        super.init(
            artist: artist,
            showsResource: RelistenApi.shows(withPlayedSong: song, byArtist: artist),
            tourSections: false
        )
        
        title = song.name
    }
    
    public required init(useCache: Bool, refreshOnAppear: Bool, style: UITableView.Style = .plain) {
        fatalError("init(useCache:refreshOnAppear:) has not been implemented")
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError()
    }
    
    public required init(artist: SlimArtistWithFeatures, showsResource: Resource?, tourSections: Bool) {
        fatalError("init(artist:showsResource:tourSections:) has not been implemented")
    }
    
    override func extractShowsAndSource(forData: SongWithShows) -> [ShowWithSingleSource] {
        return forData.shows.map({ ShowWithSingleSource(show: $0, source: nil) })
    }
}
