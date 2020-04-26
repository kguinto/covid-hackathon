
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
      'HV Family Medicine - Drs. Linden, Linden, Swanholm, and Tilley',
      '2300 Highland Village Rd # 600
Highland Village, TX 75077',
      'Highland Village',
      'TX',
      'mail or local pickup',
      'Unsure',
      '33.0724326',
      '-97.0586206'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'HV Family Medicine - Drs. Linden, Linden, Swanholm, and Tilley'
        AND o.latitude = '33.0724326'
        AND o.longitude = '-97.0586206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'HV Family Medicine - Drs. Linden, Linden, Swanholm, and Tilley'
        AND o.latitude = '33.0724326'
        AND o.longitude = '-97.0586206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'HV Family Medicine - Drs. Linden, Linden, Swanholm, and Tilley'
        AND o.latitude = '33.0724326'
        AND o.longitude = '-97.0586206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'HV Family Medicine - Drs. Linden, Linden, Swanholm, and Tilley'
        AND o.latitude = '33.0724326'
        AND o.longitude = '-97.0586206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'HV Family Medicine - Drs. Linden, Linden, Swanholm, and Tilley'
        AND o.latitude = '33.0724326'
        AND o.longitude = '-97.0586206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'HV Family Medicine - Drs. Linden, Linden, Swanholm, and Tilley'
        AND o.latitude = '33.0724326'
        AND o.longitude = '-97.0586206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'HV Family Medicine - Drs. Linden, Linden, Swanholm, and Tilley'
        AND o.latitude = '33.0724326'
        AND o.longitude = '-97.0586206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'HV Family Medicine - Drs. Linden, Linden, Swanholm, and Tilley'
        AND o.latitude = '33.0724326'
        AND o.longitude = '-97.0586206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('nitrile gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'HV Family Medicine - Drs. Linden, Linden, Swanholm, and Tilley'
        AND o.latitude = '33.0724326'
        AND o.longitude = '-97.0586206'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('caps',
    (SELECT id FROM organizations o
      WHERE o.name = 'HV Family Medicine - Drs. Linden, Linden, Swanholm, and Tilley'
        AND o.latitude = '33.0724326'
        AND o.longitude = '-97.0586206'));

COMMIT;
