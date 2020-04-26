
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
      'University Medical Center',
      '1800 West Charleston Blvd
Las Vegas, NV 89102',
      'Las Vegas',
      'NV',
      'ATTN: Dinah Luy (Nurse Practitioner)',
      'Yes',
      '36.1597177',
      '-115.1657104'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '36.1597177'
        AND o.longitude = '-115.1657104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '36.1597177'
        AND o.longitude = '-115.1657104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '36.1597177'
        AND o.longitude = '-115.1657104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '36.1597177'
        AND o.longitude = '-115.1657104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '36.1597177'
        AND o.longitude = '-115.1657104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '36.1597177'
        AND o.longitude = '-115.1657104'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center'
        AND o.latitude = '36.1597177'
        AND o.longitude = '-115.1657104'));

COMMIT;
