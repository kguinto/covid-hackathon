
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
      'Lakeview Specialty Hospital & Rehab',
      '1701 Sharp Road
Waterford, WI 53185',
      'Waterford',
      'WI',
      'Please drop off in front lobby ',
      'Yes',
      '42.7380439',
      '-88.1679921'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakeview Specialty Hospital & Rehab'
        AND o.latitude = '42.7380439'
        AND o.longitude = '-88.1679921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakeview Specialty Hospital & Rehab'
        AND o.latitude = '42.7380439'
        AND o.longitude = '-88.1679921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakeview Specialty Hospital & Rehab'
        AND o.latitude = '42.7380439'
        AND o.longitude = '-88.1679921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakeview Specialty Hospital & Rehab'
        AND o.latitude = '42.7380439'
        AND o.longitude = '-88.1679921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakeview Specialty Hospital & Rehab'
        AND o.latitude = '42.7380439'
        AND o.longitude = '-88.1679921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakeview Specialty Hospital & Rehab'
        AND o.latitude = '42.7380439'
        AND o.longitude = '-88.1679921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakeview Specialty Hospital & Rehab'
        AND o.latitude = '42.7380439'
        AND o.longitude = '-88.1679921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakeview Specialty Hospital & Rehab'
        AND o.latitude = '42.7380439'
        AND o.longitude = '-88.1679921'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakeview Specialty Hospital & Rehab'
        AND o.latitude = '42.7380439'
        AND o.longitude = '-88.1679921'));

COMMIT;
