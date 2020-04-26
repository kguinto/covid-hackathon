
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
      'PhysicianOne Urgent Care',
      '78 Pershing Dr
Derby, CT 06418',
      'Derby',
      'CT',
      'Will arrange whatever method necessary',
      'Unsure',
      '41.3276576',
      '-73.0846309'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'PhysicianOne Urgent Care'
        AND o.latitude = '41.3276576'
        AND o.longitude = '-73.0846309'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'PhysicianOne Urgent Care'
        AND o.latitude = '41.3276576'
        AND o.longitude = '-73.0846309'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'PhysicianOne Urgent Care'
        AND o.latitude = '41.3276576'
        AND o.longitude = '-73.0846309'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'PhysicianOne Urgent Care'
        AND o.latitude = '41.3276576'
        AND o.longitude = '-73.0846309'));

COMMIT;
