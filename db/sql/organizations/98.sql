
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Seattle Children''s',
      '6901 Sand Point Way NE
Seattle, WA 98115',
      'Seattle',
      'WA',
      'Curbside dropoff M-F 9AM-3PM at Seattle Children''s Guild Association Office. For questions contact guildassociation@seattlechildrens.org or call 206-987-2153. More information at https://m.facebook.com/story.php?story_fbid=10157320680637061&id=14517117060',
      'No',
      '47.6784012',
      '-122.2642546'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seattle Children''s'
        AND o.latitude = '47.6784012'
        AND o.longitude = '-122.2642546'));

COMMIT;
