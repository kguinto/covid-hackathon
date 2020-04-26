
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
      'Rea Clinic',
      '4241 IL-14
Mulkeytown, IL 62865',
      'Chrisotpher',
      'IL',
      'Come to the double doors on the northwest corner of building.',
      'Yes',
      '37.9780505',
      '-89.0738157'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rea Clinic'
        AND o.latitude = '37.9780505'
        AND o.longitude = '-89.0738157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rea Clinic'
        AND o.latitude = '37.9780505'
        AND o.longitude = '-89.0738157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rea Clinic'
        AND o.latitude = '37.9780505'
        AND o.longitude = '-89.0738157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rea Clinic'
        AND o.latitude = '37.9780505'
        AND o.longitude = '-89.0738157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rea Clinic'
        AND o.latitude = '37.9780505'
        AND o.longitude = '-89.0738157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rea Clinic'
        AND o.latitude = '37.9780505'
        AND o.longitude = '-89.0738157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rea Clinic'
        AND o.latitude = '37.9780505'
        AND o.longitude = '-89.0738157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rea Clinic'
        AND o.latitude = '37.9780505'
        AND o.longitude = '-89.0738157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rea Clinic'
        AND o.latitude = '37.9780505'
        AND o.longitude = '-89.0738157'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometer probe covers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rea Clinic'
        AND o.latitude = '37.9780505'
        AND o.longitude = '-89.0738157'));

COMMIT;
