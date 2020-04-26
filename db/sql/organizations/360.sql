
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
      'Albany Urgent Care',
      '2622 Dawson Rd
Albany, GA 31707',
      'Albany',
      'GA',
      'Unknown',
      'Unsure',
      '31.6162833',
      '-84.2206612'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Albany Urgent Care'
        AND o.latitude = '31.6162833'
        AND o.longitude = '-84.2206612'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Albany Urgent Care'
        AND o.latitude = '31.6162833'
        AND o.longitude = '-84.2206612'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Albany Urgent Care'
        AND o.latitude = '31.6162833'
        AND o.longitude = '-84.2206612'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Albany Urgent Care'
        AND o.latitude = '31.6162833'
        AND o.longitude = '-84.2206612'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Albany Urgent Care'
        AND o.latitude = '31.6162833'
        AND o.longitude = '-84.2206612'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Albany Urgent Care'
        AND o.latitude = '31.6162833'
        AND o.longitude = '-84.2206612'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Albany Urgent Care'
        AND o.latitude = '31.6162833'
        AND o.longitude = '-84.2206612'));

COMMIT;
