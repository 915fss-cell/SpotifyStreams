ALTER TABLE songs
  ADD COLUMN IF NOT EXISTS spotify_track_id TEXT,
  ADD COLUMN IF NOT EXISTS album_image_url TEXT;

CREATE INDEX IF NOT EXISTS idx_songs_spotify_track_id
  ON songs (spotify_track_id);
