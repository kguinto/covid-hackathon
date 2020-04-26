
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
      'The Center for Advanced Rehab at Parkside ',
      '110 Park City Rd
Rossville, GA 30741',
      'Rossville',
      'GA',
      'May mail to address or drop off at front door of address. Thanks!',
      'Yes',
      '34.943374',
      '-85.265426'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Center for Advanced Rehab at Parkside '
        AND o.latitude = '34.943374'
        AND o.longitude = '-85.265426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Center for Advanced Rehab at Parkside '
        AND o.latitude = '34.943374'
        AND o.longitude = '-85.265426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Center for Advanced Rehab at Parkside '
        AND o.latitude = '34.943374'
        AND o.longitude = '-85.265426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Center for Advanced Rehab at Parkside '
        AND o.latitude = '34.943374'
        AND o.longitude = '-85.265426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Center for Advanced Rehab at Parkside '
        AND o.latitude = '34.943374'
        AND o.longitude = '-85.265426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Center for Advanced Rehab at Parkside '
        AND o.latitude = '34.943374'
        AND o.longitude = '-85.265426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Center for Advanced Rehab at Parkside '
        AND o.latitude = '34.943374'
        AND o.longitude = '-85.265426'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Center for Advanced Rehab at Parkside '
        AND o.latitude = '34.943374'
        AND o.longitude = '-85.265426'));

COMMIT;
