
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
      'Allegro Pediatrics - Redmond',
      '7530 164th AVE NE , Suite A215
Redmond, WA 98052',
      'Redmond',
      'WA',
      'TBD',
      'Yes',
      '47.67152',
      '-122.1212544'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Redmond'
        AND o.latitude = '47.67152'
        AND o.longitude = '-122.1212544'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Redmond'
        AND o.latitude = '47.67152'
        AND o.longitude = '-122.1212544'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Redmond'
        AND o.latitude = '47.67152'
        AND o.longitude = '-122.1212544'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Redmond'
        AND o.latitude = '47.67152'
        AND o.longitude = '-122.1212544'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Redmond'
        AND o.latitude = '47.67152'
        AND o.longitude = '-122.1212544'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Redmond'
        AND o.latitude = '47.67152'
        AND o.longitude = '-122.1212544'));

COMMIT;
