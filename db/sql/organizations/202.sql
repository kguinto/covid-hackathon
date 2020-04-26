
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
      'Southern Hills Hospital and Medical Center',
      '9300 W Sunset Rd
Las Vegas, NV 89148',
      'Las Vegas',
      'NV',
      'Drop off to screening tent ',
      'Please check with screening tent',
      '36.0723796',
      '-115.2949636'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Hills Hospital and Medical Center'
        AND o.latitude = '36.0723796'
        AND o.longitude = '-115.2949636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Hills Hospital and Medical Center'
        AND o.latitude = '36.0723796'
        AND o.longitude = '-115.2949636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Hills Hospital and Medical Center'
        AND o.latitude = '36.0723796'
        AND o.longitude = '-115.2949636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Hills Hospital and Medical Center'
        AND o.latitude = '36.0723796'
        AND o.longitude = '-115.2949636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Hills Hospital and Medical Center'
        AND o.latitude = '36.0723796'
        AND o.longitude = '-115.2949636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Hills Hospital and Medical Center'
        AND o.latitude = '36.0723796'
        AND o.longitude = '-115.2949636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Hills Hospital and Medical Center'
        AND o.latitude = '36.0723796'
        AND o.longitude = '-115.2949636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Hills Hospital and Medical Center'
        AND o.latitude = '36.0723796'
        AND o.longitude = '-115.2949636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Hills Hospital and Medical Center'
        AND o.latitude = '36.0723796'
        AND o.longitude = '-115.2949636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Southern Hills Hospital and Medical Center'
        AND o.latitude = '36.0723796'
        AND o.longitude = '-115.2949636'));

COMMIT;
