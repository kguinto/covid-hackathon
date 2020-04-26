
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
      'Brownsburg Health Care Center',
      '1010 Hornaday Road
Brownsburg, IN 46112',
      'Brownsburg',
      'IN',
      'Drop off at: Maintenance Garage',
      'No',
      '39.8301557',
      '-86.3831271'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brownsburg Health Care Center'
        AND o.latitude = '39.8301557'
        AND o.longitude = '-86.3831271'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brownsburg Health Care Center'
        AND o.latitude = '39.8301557'
        AND o.longitude = '-86.3831271'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brownsburg Health Care Center'
        AND o.latitude = '39.8301557'
        AND o.longitude = '-86.3831271'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brownsburg Health Care Center'
        AND o.latitude = '39.8301557'
        AND o.longitude = '-86.3831271'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brownsburg Health Care Center'
        AND o.latitude = '39.8301557'
        AND o.longitude = '-86.3831271'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brownsburg Health Care Center'
        AND o.latitude = '39.8301557'
        AND o.longitude = '-86.3831271'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brownsburg Health Care Center'
        AND o.latitude = '39.8301557'
        AND o.longitude = '-86.3831271'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brownsburg Health Care Center'
        AND o.latitude = '39.8301557'
        AND o.longitude = '-86.3831271'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brownsburg Health Care Center'
        AND o.latitude = '39.8301557'
        AND o.longitude = '-86.3831271'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Brownsburg Health Care Center'
        AND o.latitude = '39.8301557'
        AND o.longitude = '-86.3831271'));

COMMIT;
