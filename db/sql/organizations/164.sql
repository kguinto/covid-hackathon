
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
      'Saint Mary of Nazareth ',
      '2233 W Division St
Chicago, IL 60622',
      'Chicago',
      'IL',
      'Leave with greeter at ER entrance (located on Leavitt Street) ',
      'Yes',
      '41.9020876',
      '-87.6829261'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary of Nazareth '
        AND o.latitude = '41.9020876'
        AND o.longitude = '-87.6829261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary of Nazareth '
        AND o.latitude = '41.9020876'
        AND o.longitude = '-87.6829261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary of Nazareth '
        AND o.latitude = '41.9020876'
        AND o.longitude = '-87.6829261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary of Nazareth '
        AND o.latitude = '41.9020876'
        AND o.longitude = '-87.6829261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary of Nazareth '
        AND o.latitude = '41.9020876'
        AND o.longitude = '-87.6829261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary of Nazareth '
        AND o.latitude = '41.9020876'
        AND o.longitude = '-87.6829261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Mary of Nazareth '
        AND o.latitude = '41.9020876'
        AND o.longitude = '-87.6829261'));

COMMIT;
