
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
      'Allegro Pediatrics - Redmond Ridge',
      '22635 N.E. Marketplace Dr. , Suite #120
Redmond, WA 98053',
      'Redmond',
      'WA',
      'TBD',
      'Yes',
      '47.694091',
      '-122.0368795'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Redmond Ridge'
        AND o.latitude = '47.694091'
        AND o.longitude = '-122.0368795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Redmond Ridge'
        AND o.latitude = '47.694091'
        AND o.longitude = '-122.0368795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Redmond Ridge'
        AND o.latitude = '47.694091'
        AND o.longitude = '-122.0368795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Redmond Ridge'
        AND o.latitude = '47.694091'
        AND o.longitude = '-122.0368795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Redmond Ridge'
        AND o.latitude = '47.694091'
        AND o.longitude = '-122.0368795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Redmond Ridge'
        AND o.latitude = '47.694091'
        AND o.longitude = '-122.0368795'));

COMMIT;
