
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
      'Silver Hills Healthcare Center',
      '3450 N Buffalo Dr
Las Vegas, NV 89129',
      'Las Vegas',
      'NV',
      'Call 702-952-2273 to coordinate drop off at facility vestibule. ',
      'Yes',
      '36.2232409',
      '-115.2590781'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Hills Healthcare Center'
        AND o.latitude = '36.2232409'
        AND o.longitude = '-115.2590781'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Hills Healthcare Center'
        AND o.latitude = '36.2232409'
        AND o.longitude = '-115.2590781'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Hills Healthcare Center'
        AND o.latitude = '36.2232409'
        AND o.longitude = '-115.2590781'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Hills Healthcare Center'
        AND o.latitude = '36.2232409'
        AND o.longitude = '-115.2590781'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Hills Healthcare Center'
        AND o.latitude = '36.2232409'
        AND o.longitude = '-115.2590781'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Hills Healthcare Center'
        AND o.latitude = '36.2232409'
        AND o.longitude = '-115.2590781'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Silver Hills Healthcare Center'
        AND o.latitude = '36.2232409'
        AND o.longitude = '-115.2590781'));

COMMIT;
