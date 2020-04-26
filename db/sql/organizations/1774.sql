
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
      'Sunflower Medical Group and Urgent Care',
      '5555 W 58th St
Mission, KS 66202',
      'Mission',
      'KS',
      'can drop off at the front desk reception',
      'Yes',
      '39.0237651',
      '-94.6498379'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunflower Medical Group and Urgent Care'
        AND o.latitude = '39.0237651'
        AND o.longitude = '-94.6498379'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunflower Medical Group and Urgent Care'
        AND o.latitude = '39.0237651'
        AND o.longitude = '-94.6498379'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunflower Medical Group and Urgent Care'
        AND o.latitude = '39.0237651'
        AND o.longitude = '-94.6498379'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunflower Medical Group and Urgent Care'
        AND o.latitude = '39.0237651'
        AND o.longitude = '-94.6498379'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunflower Medical Group and Urgent Care'
        AND o.latitude = '39.0237651'
        AND o.longitude = '-94.6498379'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunflower Medical Group and Urgent Care'
        AND o.latitude = '39.0237651'
        AND o.longitude = '-94.6498379'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sunflower Medical Group and Urgent Care'
        AND o.latitude = '39.0237651'
        AND o.longitude = '-94.6498379'));

COMMIT;
