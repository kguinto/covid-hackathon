
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
      'Office of Emergency Mgmt at Old Bridge NJ',
      '1 Old Bridge Plaza
Old Bridge, NJ 08857',
      'Old Bridge',
      'NJ',
      'Curbside',
      'Yes',
      '40.4039481',
      '-74.2975933'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Office of Emergency Mgmt at Old Bridge NJ'
        AND o.latitude = '40.4039481'
        AND o.longitude = '-74.2975933'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Office of Emergency Mgmt at Old Bridge NJ'
        AND o.latitude = '40.4039481'
        AND o.longitude = '-74.2975933'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Office of Emergency Mgmt at Old Bridge NJ'
        AND o.latitude = '40.4039481'
        AND o.longitude = '-74.2975933'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Office of Emergency Mgmt at Old Bridge NJ'
        AND o.latitude = '40.4039481'
        AND o.longitude = '-74.2975933'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Office of Emergency Mgmt at Old Bridge NJ'
        AND o.latitude = '40.4039481'
        AND o.longitude = '-74.2975933'));

COMMIT;
