
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
      'Open System Imaging',
      '1555 Springfield Dr
Chico, CA 95928',
      'Chico',
      'CA',
      'Curbside weekdays',
      'Yes',
      '39.7308276',
      '-121.8092396'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Open System Imaging'
        AND o.latitude = '39.7308276'
        AND o.longitude = '-121.8092396'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Open System Imaging'
        AND o.latitude = '39.7308276'
        AND o.longitude = '-121.8092396'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Open System Imaging'
        AND o.latitude = '39.7308276'
        AND o.longitude = '-121.8092396'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Open System Imaging'
        AND o.latitude = '39.7308276'
        AND o.longitude = '-121.8092396'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Open System Imaging'
        AND o.latitude = '39.7308276'
        AND o.longitude = '-121.8092396'));

COMMIT;
