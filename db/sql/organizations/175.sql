
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
      'King County Search and Rescue',
      'c/o Gregg''s Cycle
5810 196th St SW
Lynnwood, WA 98036',
      'Lynnwood',
      'WA',
      'http://www.KingCountySAR.org
Gregg''s Cycle is helping us with a donation site. At the entry door, a staff member will meet you to collect the donation.  Daily except Sunday and Wednesday from 10am – 6pm.',
      'Open Box N95',
      '47.820892',
      '-122.3115103'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'King County Search and Rescue'
        AND o.latitude = '47.820892'
        AND o.longitude = '-122.3115103'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'King County Search and Rescue'
        AND o.latitude = '47.820892'
        AND o.longitude = '-122.3115103'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'King County Search and Rescue'
        AND o.latitude = '47.820892'
        AND o.longitude = '-122.3115103'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Nitrile Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'King County Search and Rescue'
        AND o.latitude = '47.820892'
        AND o.longitude = '-122.3115103'));

COMMIT;
