
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
      'ConvenientMD Urgent Care',
      '125 Indian Rock Rd
Windham, NH 03087',
      'Windham',
      'NH',
      'Mail or Pick-Up',
      'Unsure',
      '42.8073225',
      '-71.2628154'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.8073225'
        AND o.longitude = '-71.2628154'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.8073225'
        AND o.longitude = '-71.2628154'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.8073225'
        AND o.longitude = '-71.2628154'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.8073225'
        AND o.longitude = '-71.2628154'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('gloves (SM/MD/LG)',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '42.8073225'
        AND o.longitude = '-71.2628154'));

COMMIT;
