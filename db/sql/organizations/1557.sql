
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
      'Kaiser Permanente - Urology Department',
      '9449 E Imperial Hwy D231
Downey, CA 90242',
      'Downey',
      'CA',
      'curbside in front of building ''D'' stairwell',
      'Yes',
      '33.9181784',
      '-118.1263107'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Urology Department'
        AND o.latitude = '33.9181784'
        AND o.longitude = '-118.1263107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Urology Department'
        AND o.latitude = '33.9181784'
        AND o.longitude = '-118.1263107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Urology Department'
        AND o.latitude = '33.9181784'
        AND o.longitude = '-118.1263107'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Urology Department'
        AND o.latitude = '33.9181784'
        AND o.longitude = '-118.1263107'));

COMMIT;
