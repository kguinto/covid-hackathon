
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
      'Northern Michigan Surgical Suites',
      '825 Moll Dr
Boyne City, MI 49712',
      'Boyne City',
      'MI',
      'Mailing address',
      'Yes',
      '45.2004417',
      '-84.9735251'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Michigan Surgical Suites'
        AND o.latitude = '45.2004417'
        AND o.longitude = '-84.9735251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Michigan Surgical Suites'
        AND o.latitude = '45.2004417'
        AND o.longitude = '-84.9735251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Michigan Surgical Suites'
        AND o.latitude = '45.2004417'
        AND o.longitude = '-84.9735251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Michigan Surgical Suites'
        AND o.latitude = '45.2004417'
        AND o.longitude = '-84.9735251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Michigan Surgical Suites'
        AND o.latitude = '45.2004417'
        AND o.longitude = '-84.9735251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Michigan Surgical Suites'
        AND o.latitude = '45.2004417'
        AND o.longitude = '-84.9735251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Michigan Surgical Suites'
        AND o.latitude = '45.2004417'
        AND o.longitude = '-84.9735251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Michigan Surgical Suites'
        AND o.latitude = '45.2004417'
        AND o.longitude = '-84.9735251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Michigan Surgical Suites'
        AND o.latitude = '45.2004417'
        AND o.longitude = '-84.9735251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Michigan Surgical Suites'
        AND o.latitude = '45.2004417'
        AND o.longitude = '-84.9735251'));

COMMIT;
