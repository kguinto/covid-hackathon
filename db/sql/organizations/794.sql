
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
      'Behavioral Health Services North, Inc.',
      '2155 State Route 22B
Morrisonville, NY 12962',
      'Morrisonville',
      'NY',
      'Bring to front door and follow instruction to get in touch with someone inside.',
      'Yes',
      '44.6967992',
      '-73.5356896'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Behavioral Health Services North, Inc.'
        AND o.latitude = '44.6967992'
        AND o.longitude = '-73.5356896'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Behavioral Health Services North, Inc.'
        AND o.latitude = '44.6967992'
        AND o.longitude = '-73.5356896'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Behavioral Health Services North, Inc.'
        AND o.latitude = '44.6967992'
        AND o.longitude = '-73.5356896'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Behavioral Health Services North, Inc.'
        AND o.latitude = '44.6967992'
        AND o.longitude = '-73.5356896'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Behavioral Health Services North, Inc.'
        AND o.latitude = '44.6967992'
        AND o.longitude = '-73.5356896'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Behavioral Health Services North, Inc.'
        AND o.latitude = '44.6967992'
        AND o.longitude = '-73.5356896'));

COMMIT;
