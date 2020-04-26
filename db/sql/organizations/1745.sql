
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
      'North Dakota Drivers License Division',
      '1600 2nd Ave SW
Minot, ND 58701',
      'minot',
      'ND',
      'Mail to address above or curbside, I am happy to come out and get them',
      'Yes',
      '48.2349959',
      '-101.3190397'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Dakota Drivers License Division'
        AND o.latitude = '48.2349959'
        AND o.longitude = '-101.3190397'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Dakota Drivers License Division'
        AND o.latitude = '48.2349959'
        AND o.longitude = '-101.3190397'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Dakota Drivers License Division'
        AND o.latitude = '48.2349959'
        AND o.longitude = '-101.3190397'));

COMMIT;
