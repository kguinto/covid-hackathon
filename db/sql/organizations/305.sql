
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
      'LAC+USC Medical Center',
      '2020 Zonal Ave IRD 114
Los Angeles, CA 90033',
      'Los Angeles',
      'CA',
      'Mail in',
      'No',
      '34.0590574',
      '-118.2065663'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'LAC+USC Medical Center'
        AND o.latitude = '34.0590574'
        AND o.longitude = '-118.2065663'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'LAC+USC Medical Center'
        AND o.latitude = '34.0590574'
        AND o.longitude = '-118.2065663'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'LAC+USC Medical Center'
        AND o.latitude = '34.0590574'
        AND o.longitude = '-118.2065663'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'LAC+USC Medical Center'
        AND o.latitude = '34.0590574'
        AND o.longitude = '-118.2065663'));

COMMIT;
