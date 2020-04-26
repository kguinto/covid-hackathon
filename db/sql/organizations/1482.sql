
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
      'UT Henderson Respiratory Clinic',
      '317 Wilson St
Henderson, TX 75652',
      'Henderson',
      'TX',
      'Supplies can be dropped off at the back door',
      'No',
      '32.1619097',
      '-94.7948507'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Henderson Respiratory Clinic'
        AND o.latitude = '32.1619097'
        AND o.longitude = '-94.7948507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Henderson Respiratory Clinic'
        AND o.latitude = '32.1619097'
        AND o.longitude = '-94.7948507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Henderson Respiratory Clinic'
        AND o.latitude = '32.1619097'
        AND o.longitude = '-94.7948507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Henderson Respiratory Clinic'
        AND o.latitude = '32.1619097'
        AND o.longitude = '-94.7948507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Henderson Respiratory Clinic'
        AND o.latitude = '32.1619097'
        AND o.longitude = '-94.7948507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Henderson Respiratory Clinic'
        AND o.latitude = '32.1619097'
        AND o.longitude = '-94.7948507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Henderson Respiratory Clinic'
        AND o.latitude = '32.1619097'
        AND o.longitude = '-94.7948507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Henderson Respiratory Clinic'
        AND o.latitude = '32.1619097'
        AND o.longitude = '-94.7948507'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'UT Henderson Respiratory Clinic'
        AND o.latitude = '32.1619097'
        AND o.longitude = '-94.7948507'));

COMMIT;
