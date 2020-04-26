
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
      'Sawyer County Ambulance Service',
      '10676 Nyman Ave
Hayward, WI 54843',
      'Hayward',
      'WI',
      '10676 Nyman Ave',
      'Yes',
      '46.0185502',
      '-91.4877143'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sawyer County Ambulance Service'
        AND o.latitude = '46.0185502'
        AND o.longitude = '-91.4877143'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sawyer County Ambulance Service'
        AND o.latitude = '46.0185502'
        AND o.longitude = '-91.4877143'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sawyer County Ambulance Service'
        AND o.latitude = '46.0185502'
        AND o.longitude = '-91.4877143'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sawyer County Ambulance Service'
        AND o.latitude = '46.0185502'
        AND o.longitude = '-91.4877143'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sawyer County Ambulance Service'
        AND o.latitude = '46.0185502'
        AND o.longitude = '-91.4877143'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sawyer County Ambulance Service'
        AND o.latitude = '46.0185502'
        AND o.longitude = '-91.4877143'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sawyer County Ambulance Service'
        AND o.latitude = '46.0185502'
        AND o.longitude = '-91.4877143'));

COMMIT;
