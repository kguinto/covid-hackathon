
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
      'Community First Medical Center',
      '5645 W Addison St
Chicago, IL 60634',
      'Chicago',
      'IL',
      'Drop Off in Emergency Room Issette Borrego',
      'Yes',
      '41.9455304',
      '-87.7676772'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community First Medical Center'
        AND o.latitude = '41.9455304'
        AND o.longitude = '-87.7676772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community First Medical Center'
        AND o.latitude = '41.9455304'
        AND o.longitude = '-87.7676772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community First Medical Center'
        AND o.latitude = '41.9455304'
        AND o.longitude = '-87.7676772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community First Medical Center'
        AND o.latitude = '41.9455304'
        AND o.longitude = '-87.7676772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community First Medical Center'
        AND o.latitude = '41.9455304'
        AND o.longitude = '-87.7676772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community First Medical Center'
        AND o.latitude = '41.9455304'
        AND o.longitude = '-87.7676772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community First Medical Center'
        AND o.latitude = '41.9455304'
        AND o.longitude = '-87.7676772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community First Medical Center'
        AND o.latitude = '41.9455304'
        AND o.longitude = '-87.7676772'));

COMMIT;
