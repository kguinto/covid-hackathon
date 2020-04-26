
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
      'Coastal obgyn ',
      '999 Summer St
Stamford, CT 06905',
      'Stamford ',
      'CT',
      'Contact me sghofrany@gmail.com and I will arrange! TIA',
      'Yes',
      '41.0601378',
      '-73.5401795'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coastal obgyn '
        AND o.latitude = '41.0601378'
        AND o.longitude = '-73.5401795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coastal obgyn '
        AND o.latitude = '41.0601378'
        AND o.longitude = '-73.5401795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coastal obgyn '
        AND o.latitude = '41.0601378'
        AND o.longitude = '-73.5401795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coastal obgyn '
        AND o.latitude = '41.0601378'
        AND o.longitude = '-73.5401795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coastal obgyn '
        AND o.latitude = '41.0601378'
        AND o.longitude = '-73.5401795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coastal obgyn '
        AND o.latitude = '41.0601378'
        AND o.longitude = '-73.5401795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coastal obgyn '
        AND o.latitude = '41.0601378'
        AND o.longitude = '-73.5401795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coastal obgyn '
        AND o.latitude = '41.0601378'
        AND o.longitude = '-73.5401795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coastal obgyn '
        AND o.latitude = '41.0601378'
        AND o.longitude = '-73.5401795'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Coastal obgyn '
        AND o.latitude = '41.0601378'
        AND o.longitude = '-73.5401795'));

COMMIT;
