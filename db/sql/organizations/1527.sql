
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
      'Valley View Estates Health & Rehab',
      '225 N 8th St
Hamilton, MT 59840',
      'Hamilton',
      'MT',
      'lease at front door',
      'Yes',
      '46.248236',
      '-114.1668253'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley View Estates Health & Rehab'
        AND o.latitude = '46.248236'
        AND o.longitude = '-114.1668253'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley View Estates Health & Rehab'
        AND o.latitude = '46.248236'
        AND o.longitude = '-114.1668253'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley View Estates Health & Rehab'
        AND o.latitude = '46.248236'
        AND o.longitude = '-114.1668253'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley View Estates Health & Rehab'
        AND o.latitude = '46.248236'
        AND o.longitude = '-114.1668253'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley View Estates Health & Rehab'
        AND o.latitude = '46.248236'
        AND o.longitude = '-114.1668253'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley View Estates Health & Rehab'
        AND o.latitude = '46.248236'
        AND o.longitude = '-114.1668253'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley View Estates Health & Rehab'
        AND o.latitude = '46.248236'
        AND o.longitude = '-114.1668253'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valley View Estates Health & Rehab'
        AND o.latitude = '46.248236'
        AND o.longitude = '-114.1668253'));

COMMIT;
