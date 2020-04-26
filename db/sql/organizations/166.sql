
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
      'Allegro Pediatrics - Factoria',
      '4122 Factoria Blvd. S.E., Suite #101
Bellevue, WA 98006',
      'Bellevue',
      'WA',
      'TBD
',
      'Yes',
      '47.5722577',
      '-122.1684705'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Factoria'
        AND o.latitude = '47.5722577'
        AND o.longitude = '-122.1684705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Factoria'
        AND o.latitude = '47.5722577'
        AND o.longitude = '-122.1684705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Factoria'
        AND o.latitude = '47.5722577'
        AND o.longitude = '-122.1684705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Factoria'
        AND o.latitude = '47.5722577'
        AND o.longitude = '-122.1684705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Factoria'
        AND o.latitude = '47.5722577'
        AND o.longitude = '-122.1684705'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Factoria'
        AND o.latitude = '47.5722577'
        AND o.longitude = '-122.1684705'));

COMMIT;
