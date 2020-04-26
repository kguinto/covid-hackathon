
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
      'Friends of Firefighters, Inc',
      '199 Van Brunt St
Brooklyn, NY 11231',
      'New York - Brooklyn',
      'NY',
      'Text first (917) 940-4407; curbside delivery',
      'No',
      '40.6815387',
      '-74.007548'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Friends of Firefighters, Inc'
        AND o.latitude = '40.6815387'
        AND o.longitude = '-74.007548'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Friends of Firefighters, Inc'
        AND o.latitude = '40.6815387'
        AND o.longitude = '-74.007548'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Friends of Firefighters, Inc'
        AND o.latitude = '40.6815387'
        AND o.longitude = '-74.007548'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Friends of Firefighters, Inc'
        AND o.latitude = '40.6815387'
        AND o.longitude = '-74.007548'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Friends of Firefighters, Inc'
        AND o.latitude = '40.6815387'
        AND o.longitude = '-74.007548'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Friends of Firefighters, Inc'
        AND o.latitude = '40.6815387'
        AND o.longitude = '-74.007548'));

COMMIT;
