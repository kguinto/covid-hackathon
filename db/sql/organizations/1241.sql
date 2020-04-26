
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
      'Primary Care of Hudson & Immediate Care',
      '300 Derry Rd
Hudson, NH 03051',
      'Hudson ',
      'NH',
      'Front entrance please',
      'Yes',
      '42.8153524',
      '-71.419964'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care of Hudson & Immediate Care'
        AND o.latitude = '42.8153524'
        AND o.longitude = '-71.419964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care of Hudson & Immediate Care'
        AND o.latitude = '42.8153524'
        AND o.longitude = '-71.419964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care of Hudson & Immediate Care'
        AND o.latitude = '42.8153524'
        AND o.longitude = '-71.419964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care of Hudson & Immediate Care'
        AND o.latitude = '42.8153524'
        AND o.longitude = '-71.419964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care of Hudson & Immediate Care'
        AND o.latitude = '42.8153524'
        AND o.longitude = '-71.419964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care of Hudson & Immediate Care'
        AND o.latitude = '42.8153524'
        AND o.longitude = '-71.419964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care of Hudson & Immediate Care'
        AND o.latitude = '42.8153524'
        AND o.longitude = '-71.419964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care of Hudson & Immediate Care'
        AND o.latitude = '42.8153524'
        AND o.longitude = '-71.419964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care of Hudson & Immediate Care'
        AND o.latitude = '42.8153524'
        AND o.longitude = '-71.419964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care of Hudson & Immediate Care'
        AND o.latitude = '42.8153524'
        AND o.longitude = '-71.419964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Water/snacks for staff',
    (SELECT id FROM organizations o
      WHERE o.name = 'Primary Care of Hudson & Immediate Care'
        AND o.latitude = '42.8153524'
        AND o.longitude = '-71.419964'));

COMMIT;
