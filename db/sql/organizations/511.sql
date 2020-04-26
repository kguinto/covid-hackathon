
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
      'Primary Children''s Hospital',
      '100 Mario Capecchi Dr
Salt Lake City, UT 84113',
      'Salt Lake City',
      'UT',
      '',
      'Unsure',
      '40.7717633',
      '-111.8389786'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Children''s Hospital'
        AND o.latitude = '40.7717633'
        AND o.longitude = '-111.8389786'));

COMMIT;
