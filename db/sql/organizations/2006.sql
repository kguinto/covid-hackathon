
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
      'Mount Sinai Hospital',
      '109 E 102nd St #1A
New York, NY 10029',
      'New York',
      'NY',
      'Please email alexander.goel@mountsinai.org',
      'Yes',
      '40.790315',
      '-73.949039'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital'
        AND o.latitude = '40.790315'
        AND o.longitude = '-73.949039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital'
        AND o.latitude = '40.790315'
        AND o.longitude = '-73.949039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital'
        AND o.latitude = '40.790315'
        AND o.longitude = '-73.949039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital'
        AND o.latitude = '40.790315'
        AND o.longitude = '-73.949039'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Hospital'
        AND o.latitude = '40.790315'
        AND o.longitude = '-73.949039'));

COMMIT;
