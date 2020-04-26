
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
      'Carson Nursing and Rehab. Center',
      '2898 US-50
Carson City, NV 89701',
      'Carson City',
      'NV',
      'Linda Dale/Central Supply',
      'Yes',
      '39.1766864',
      '-119.7357661'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carson Nursing and Rehab. Center'
        AND o.latitude = '39.1766864'
        AND o.longitude = '-119.7357661'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carson Nursing and Rehab. Center'
        AND o.latitude = '39.1766864'
        AND o.longitude = '-119.7357661'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carson Nursing and Rehab. Center'
        AND o.latitude = '39.1766864'
        AND o.longitude = '-119.7357661'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carson Nursing and Rehab. Center'
        AND o.latitude = '39.1766864'
        AND o.longitude = '-119.7357661'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carson Nursing and Rehab. Center'
        AND o.latitude = '39.1766864'
        AND o.longitude = '-119.7357661'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carson Nursing and Rehab. Center'
        AND o.latitude = '39.1766864'
        AND o.longitude = '-119.7357661'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carson Nursing and Rehab. Center'
        AND o.latitude = '39.1766864'
        AND o.longitude = '-119.7357661'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Carson Nursing and Rehab. Center'
        AND o.latitude = '39.1766864'
        AND o.longitude = '-119.7357661'));

COMMIT;
