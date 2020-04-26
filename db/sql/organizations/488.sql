
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
      'Slidell Memorial Hospital',
      '1001 Gause Blvd
Slidell, LA 70458',
      'Slidell',
      'LA',
      '',
      'Unsure',
      '30.2837269',
      '-89.770201'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Slidell Memorial Hospital'
        AND o.latitude = '30.2837269'
        AND o.longitude = '-89.770201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Slidell Memorial Hospital'
        AND o.latitude = '30.2837269'
        AND o.longitude = '-89.770201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Slidell Memorial Hospital'
        AND o.latitude = '30.2837269'
        AND o.longitude = '-89.770201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Slidell Memorial Hospital'
        AND o.latitude = '30.2837269'
        AND o.longitude = '-89.770201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Slidell Memorial Hospital'
        AND o.latitude = '30.2837269'
        AND o.longitude = '-89.770201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Slidell Memorial Hospital'
        AND o.latitude = '30.2837269'
        AND o.longitude = '-89.770201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('bleach wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Slidell Memorial Hospital'
        AND o.latitude = '30.2837269'
        AND o.longitude = '-89.770201'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('hydrogen peroxide wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Slidell Memorial Hospital'
        AND o.latitude = '30.2837269'
        AND o.longitude = '-89.770201'));

COMMIT;
