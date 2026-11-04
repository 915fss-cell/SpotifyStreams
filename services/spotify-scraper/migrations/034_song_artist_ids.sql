-- Preserve every Spotify artist credited on a track so downstream consumers
-- can distinguish featured and group tracks from primary-artist-only songs.
ALTER TABLE songs
  ADD COLUMN IF NOT EXISTS artist_ids TEXT[] NOT NULL DEFAULT '{}';

CREATE INDEX IF NOT EXISTS idx_songs_artist_ids
  ON songs USING GIN (artist_ids);
