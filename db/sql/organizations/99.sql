
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
      'Seattle Children''s Bellevue Clinic',
      '1500 116th Ave. NE
Bellevue, WA 98004',
      'Bellevue',
      'WA',
      'Curbside dropoff M-F 9AM-3PM. Contact guildassociation@seattlechildrens.org or call 206-987-2153. More information https://m.facebook.com/story.php?story_fbid=10157320680637061&id=14517117060',
      'No',
      '47.6242737',
      '-122.1848377'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Seattle Children''s Bellevue Clinic'
        AND o.latitude = '47.6242737'
        AND o.longitude = '-122.1848377'));

COMMIT;
