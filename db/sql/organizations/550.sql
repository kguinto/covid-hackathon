
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
      'Community Options inc ',
      '506 Hamburg Turnpike Suite 105-107
Wayne, NJ 07470',
      'Wayne ',
      'NJ',
      '',
      'Yes',
      '40.9549426',
      '-74.2110999'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options inc '
        AND o.latitude = '40.9549426'
        AND o.longitude = '-74.2110999'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options inc '
        AND o.latitude = '40.9549426'
        AND o.longitude = '-74.2110999'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options inc '
        AND o.latitude = '40.9549426'
        AND o.longitude = '-74.2110999'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options inc '
        AND o.latitude = '40.9549426'
        AND o.longitude = '-74.2110999'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options inc '
        AND o.latitude = '40.9549426'
        AND o.longitude = '-74.2110999'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options inc '
        AND o.latitude = '40.9549426'
        AND o.longitude = '-74.2110999'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options inc '
        AND o.latitude = '40.9549426'
        AND o.longitude = '-74.2110999'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options inc '
        AND o.latitude = '40.9549426'
        AND o.longitude = '-74.2110999'));

COMMIT;
