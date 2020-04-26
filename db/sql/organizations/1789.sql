
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
      'Saint Francis Health Care system',
      '211 St Francis Dr
Cape Girardeau, MO 63703',
      'Cape Girardeau ',
      'MO',
      'Entrance 1',
      'Yes',
      '37.303407',
      '-89.5712971'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Francis Health Care system'
        AND o.latitude = '37.303407'
        AND o.longitude = '-89.5712971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Francis Health Care system'
        AND o.latitude = '37.303407'
        AND o.longitude = '-89.5712971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Francis Health Care system'
        AND o.latitude = '37.303407'
        AND o.longitude = '-89.5712971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Francis Health Care system'
        AND o.latitude = '37.303407'
        AND o.longitude = '-89.5712971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Francis Health Care system'
        AND o.latitude = '37.303407'
        AND o.longitude = '-89.5712971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Francis Health Care system'
        AND o.latitude = '37.303407'
        AND o.longitude = '-89.5712971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Francis Health Care system'
        AND o.latitude = '37.303407'
        AND o.longitude = '-89.5712971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Francis Health Care system'
        AND o.latitude = '37.303407'
        AND o.longitude = '-89.5712971'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Francis Health Care system'
        AND o.latitude = '37.303407'
        AND o.longitude = '-89.5712971'));

COMMIT;
