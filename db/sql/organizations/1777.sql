
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
      'Lawrence General Hospital',
      '795 Chickering Rd
North Andover, MA 01845',
      'North Andover',
      'MA',
      'Do not drop off at the hospital. Drop off at North Andover Fire Department, 795 Chickering Road, North Andover MA',
      'Yes',
      '42.7061985',
      '-71.11713'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lawrence General Hospital'
        AND o.latitude = '42.7061985'
        AND o.longitude = '-71.11713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lawrence General Hospital'
        AND o.latitude = '42.7061985'
        AND o.longitude = '-71.11713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lawrence General Hospital'
        AND o.latitude = '42.7061985'
        AND o.longitude = '-71.11713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lawrence General Hospital'
        AND o.latitude = '42.7061985'
        AND o.longitude = '-71.11713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lawrence General Hospital'
        AND o.latitude = '42.7061985'
        AND o.longitude = '-71.11713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lawrence General Hospital'
        AND o.latitude = '42.7061985'
        AND o.longitude = '-71.11713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lawrence General Hospital'
        AND o.latitude = '42.7061985'
        AND o.longitude = '-71.11713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lawrence General Hospital'
        AND o.latitude = '42.7061985'
        AND o.longitude = '-71.11713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lawrence General Hospital'
        AND o.latitude = '42.7061985'
        AND o.longitude = '-71.11713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lawrence General Hospital'
        AND o.latitude = '42.7061985'
        AND o.longitude = '-71.11713'));

COMMIT;
