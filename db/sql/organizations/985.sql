
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
      'Carefirst Rehab',
      '7225 Nova''s Landing Dr
Sellersburg, IN 47172',
      'Sellersburg',
      'IN',
      'Curbside drop off - in front of office',
      'Yes',
      '38.3718276',
      '-85.7708443'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carefirst Rehab'
        AND o.latitude = '38.3718276'
        AND o.longitude = '-85.7708443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carefirst Rehab'
        AND o.latitude = '38.3718276'
        AND o.longitude = '-85.7708443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carefirst Rehab'
        AND o.latitude = '38.3718276'
        AND o.longitude = '-85.7708443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carefirst Rehab'
        AND o.latitude = '38.3718276'
        AND o.longitude = '-85.7708443'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carefirst Rehab'
        AND o.latitude = '38.3718276'
        AND o.longitude = '-85.7708443'));

COMMIT;
