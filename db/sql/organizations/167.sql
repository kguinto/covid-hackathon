
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
      'Allegro Pediatrics - Issaquah Highlands',
      '1011 NE High St, #200
Issaquah, WA 98029',
      'Issaquah',
      'WA',
      'TBD',
      'Yes',
      '47.5442341',
      '-122.0156879'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Issaquah Highlands'
        AND o.latitude = '47.5442341'
        AND o.longitude = '-122.0156879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Issaquah Highlands'
        AND o.latitude = '47.5442341'
        AND o.longitude = '-122.0156879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Issaquah Highlands'
        AND o.latitude = '47.5442341'
        AND o.longitude = '-122.0156879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Issaquah Highlands'
        AND o.latitude = '47.5442341'
        AND o.longitude = '-122.0156879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Issaquah Highlands'
        AND o.latitude = '47.5442341'
        AND o.longitude = '-122.0156879'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allegro Pediatrics - Issaquah Highlands'
        AND o.latitude = '47.5442341'
        AND o.longitude = '-122.0156879'));

COMMIT;
