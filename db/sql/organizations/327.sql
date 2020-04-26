
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
      'Valley Immediate Care',
      '1600 Delta Waters Road
Medford, OR 97504',
      'Medford',
      'OR',
      'Unknown. Also locations in Ashland & Grants Pass. ',
      'Unsure',
      '42.3626636',
      '-122.8598628'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Immediate Care'
        AND o.latitude = '42.3626636'
        AND o.longitude = '-122.8598628'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Immediate Care'
        AND o.latitude = '42.3626636'
        AND o.longitude = '-122.8598628'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley Immediate Care'
        AND o.latitude = '42.3626636'
        AND o.longitude = '-122.8598628'));

COMMIT;
