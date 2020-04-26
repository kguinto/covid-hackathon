
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
      'Franciscan Women''s Health Associates - Burien',
      '16045 1st Ave S
Burien, WA 98148',
      'Burien',
      'WA',
      'Bring up stairs to the Women''s care desk or call and a staff member will come down to get them.',
      'Yes',
      '47.4585642',
      '-122.3339504'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Women''s Health Associates - Burien'
        AND o.latitude = '47.4585642'
        AND o.longitude = '-122.3339504'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan Women''s Health Associates - Burien'
        AND o.latitude = '47.4585642'
        AND o.longitude = '-122.3339504'));

COMMIT;
