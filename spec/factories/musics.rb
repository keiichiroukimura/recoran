FactoryBot.define do
  factory :music do
    artist_name { 'Otis Redding' }
    track_name {'Try a Little Tenderness'}
    album_name {'The Dictionary Of Soul'}
    release_date {'1966-10-15 '}
    album_url {'https://open.spotify.com/album/25uNcuL4dAoV62eKmr8Q0Y'}
    track_url {'https://open.spotify.com/album/25uNcuL4dAoV62eKmr8Q0Y'}
    preview_url {'https://p.scdn.co/mp3-preview/1518c461301b0c3224efd3d44d3f2d4b2420ad77?cid=58d4e2dadea04c4b8eddcdfc9dece754'}
    image {'https://i.scdn.co/image/08e43a9eaba6748b53939bdd1a0fcbd28822ed12'}
  end
end

