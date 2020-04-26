
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
      'Allegro Pediatrics - Totem Lake',
      '13030 121st Way N.E., Suite #100
Kirkland, WA 98034',
      'Kirkland',
      'WA',
      'TBD',
      'Yes',
      '47.7176832',
      '-122.17851'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Totem Lake'
        AND o.latitude = '47.7176832'
        AND o.longitude = '-122.17851'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Totem Lake'
        AND o.latitude = '47.7176832'
        AND o.longitude = '-122.17851'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Totem Lake'
        AND o.latitude = '47.7176832'
        AND o.longitude = '-122.17851'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Totem Lake'
        AND o.latitude = '47.7176832'
        AND o.longitude = '-122.17851'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Totem Lake'
        AND o.latitude = '47.7176832'
        AND o.longitude = '-122.17851'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Totem Lake'
        AND o.latitude = '47.7176832'
        AND o.longitude = '-122.17851'));

COMMIT;
