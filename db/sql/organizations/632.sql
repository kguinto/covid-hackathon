
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
      'St. Joseph Hospital Orange ',
      '1100 W Stewart Dr
Orange, CA 92868',
      'Orange ',
      'CA',
      'Mail to: Central Services - Donations ',
      'No',
      '33.7820441',
      '-117.8654245'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Hospital Orange '
        AND o.latitude = '33.7820441'
        AND o.longitude = '-117.8654245'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Hospital Orange '
        AND o.latitude = '33.7820441'
        AND o.longitude = '-117.8654245'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Hospital Orange '
        AND o.latitude = '33.7820441'
        AND o.longitude = '-117.8654245'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Hospital Orange '
        AND o.latitude = '33.7820441'
        AND o.longitude = '-117.8654245'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Hospital Orange '
        AND o.latitude = '33.7820441'
        AND o.longitude = '-117.8654245'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Hospital Orange '
        AND o.latitude = '33.7820441'
        AND o.longitude = '-117.8654245'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Hospital Orange '
        AND o.latitude = '33.7820441'
        AND o.longitude = '-117.8654245'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Hospital Orange '
        AND o.latitude = '33.7820441'
        AND o.longitude = '-117.8654245'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermal scanners',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Joseph Hospital Orange '
        AND o.latitude = '33.7820441'
        AND o.longitude = '-117.8654245'));

COMMIT;
