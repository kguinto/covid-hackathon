
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
      'Healing House',
      ' 4505 St John Ave
Kansas City, MO 64123',
      'Kansas City',
      'MO',
      'Bring to front desk',
      'Yes',
      '39.1125672',
      '-94.5283615'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healing House'
        AND o.latitude = '39.1125672'
        AND o.longitude = '-94.5283615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healing House'
        AND o.latitude = '39.1125672'
        AND o.longitude = '-94.5283615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healing House'
        AND o.latitude = '39.1125672'
        AND o.longitude = '-94.5283615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healing House'
        AND o.latitude = '39.1125672'
        AND o.longitude = '-94.5283615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healing House'
        AND o.latitude = '39.1125672'
        AND o.longitude = '-94.5283615'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Healing House'
        AND o.latitude = '39.1125672'
        AND o.longitude = '-94.5283615'));

COMMIT;
