
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
      'Newport Urgent Care',
      '1000 Bristol St. North Suite 1B
Newport Beach, CA 92660',
      'Newport Beach',
      'CA',
      'Unsure',
      'Unsure',
      '33.6578047',
      '-117.8669027'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport Urgent Care'
        AND o.latitude = '33.6578047'
        AND o.longitude = '-117.8669027'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport Urgent Care'
        AND o.latitude = '33.6578047'
        AND o.longitude = '-117.8669027'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Newport Urgent Care'
        AND o.latitude = '33.6578047'
        AND o.longitude = '-117.8669027'));

COMMIT;
