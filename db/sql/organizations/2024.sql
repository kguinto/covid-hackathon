
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
      'Laguna Beach Hospital',
      '31872 Coast Hwy
Laguna Beach, CA 92651',
      'Laguna Beach',
      'CA',
      'Please bring to the Emergency Department and place attention Dr. William Dodge',
      'Not n95 or CAPR supplies',
      '2490',
      'undefined'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laguna Beach Hospital'
        AND o.latitude = '2490'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laguna Beach Hospital'
        AND o.latitude = '2490'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laguna Beach Hospital'
        AND o.latitude = '2490'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laguna Beach Hospital'
        AND o.latitude = '2490'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laguna Beach Hospital'
        AND o.latitude = '2490'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laguna Beach Hospital'
        AND o.latitude = '2490'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laguna Beach Hospital'
        AND o.latitude = '2490'
        AND o.longitude = 'undefined'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('CAPR and/ or CAPR face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Laguna Beach Hospital'
        AND o.latitude = '2490'
        AND o.longitude = 'undefined'));

COMMIT;
