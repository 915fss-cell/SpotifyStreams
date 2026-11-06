-- Keep only the requested Stray Kids roster active. Historical songs and
-- stream snapshots remain intact; inactive artists are no longer scraped.
UPDATE tracked_artists
SET active = (artist_id IN (
  '2dIgFjalVxs4ThymZ67YCE', -- Stray Kids
  '4UIOuc84ExWojcUzFGtb8W', -- Felix
  '3XSid6KaiKoMAVZs2ug3yw', -- Changbin
  '46YvTuKiPBUu5KP9818J2F', -- HAN
  '5jRUIqBSxmsBPNiEwKUjgZ',  -- Bangchan
  '1odvXbzhdzNajv6un9x5Mc', -- I.N
  '04jivE3Ek7Xu8WSGVmEqUn', -- Lee Know
  '0ymFDpsRImjK673AGgFBcg'  -- Hyunjin
));
