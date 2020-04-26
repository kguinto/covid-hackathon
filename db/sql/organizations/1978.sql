
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
      'NYCHHC/Harlem Hospital ',
      '506 Lenox Ave
New York, NY 10037',
      'New York',
      'NY',
      '6th Floor Nursing Office ',
      'Yes',
      '40.8142287',
      '-73.9396101'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYCHHC/Harlem Hospital '
        AND o.latitude = '40.8142287'
        AND o.longitude = '-73.9396101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYCHHC/Harlem Hospital '
        AND o.latitude = '40.8142287'
        AND o.longitude = '-73.9396101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYCHHC/Harlem Hospital '
        AND o.latitude = '40.8142287'
        AND o.longitude = '-73.9396101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYCHHC/Harlem Hospital '
        AND o.latitude = '40.8142287'
        AND o.longitude = '-73.9396101'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'NYCHHC/Harlem Hospital '
        AND o.latitude = '40.8142287'
        AND o.longitude = '-73.9396101'));

COMMIT;
