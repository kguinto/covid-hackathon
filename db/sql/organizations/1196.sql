
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
      'Courtyard Care Center',
      '340 Northlake Dr
San Jose, CA 95129',
      'San Jose',
      'CA',
      'Just bring it to the door, will take care of it from there',
      'Yes',
      '37.3220968',
      '-121.9681513'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Courtyard Care Center'
        AND o.latitude = '37.3220968'
        AND o.longitude = '-121.9681513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Courtyard Care Center'
        AND o.latitude = '37.3220968'
        AND o.longitude = '-121.9681513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Courtyard Care Center'
        AND o.latitude = '37.3220968'
        AND o.longitude = '-121.9681513'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Courtyard Care Center'
        AND o.latitude = '37.3220968'
        AND o.longitude = '-121.9681513'));

COMMIT;
