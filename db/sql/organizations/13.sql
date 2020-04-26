
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
      'Allegro Pediatrics - Bothell',
      '19801 North Creek Parkway, Suite # 201
Bothell, WA 98011',
      'Bothell',
      'WA',
      'TBD',
      'Yes',
      '47.7711358',
      '-122.187867'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Bothell'
        AND o.latitude = '47.7711358'
        AND o.longitude = '-122.187867'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Bothell'
        AND o.latitude = '47.7711358'
        AND o.longitude = '-122.187867'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face Shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Bothell'
        AND o.latitude = '47.7711358'
        AND o.longitude = '-122.187867'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable Booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Bothell'
        AND o.latitude = '47.7711358'
        AND o.longitude = '-122.187867'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety Goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Bothell'
        AND o.latitude = '47.7711358'
        AND o.longitude = '-122.187867'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Bothell'
        AND o.latitude = '47.7711358'
        AND o.longitude = '-122.187867'));

COMMIT;
