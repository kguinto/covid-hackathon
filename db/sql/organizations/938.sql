
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
      'Oakland Heights Nursing and Rehabilitation',
      '2361 E. 29th Street
Oakland, CA 94606',
      'Oakland',
      'CA',
      '2361 E. 29th Street',
      'Yes',
      '37.794724',
      '-122.2251041'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oakland Heights Nursing and Rehabilitation'
        AND o.latitude = '37.794724'
        AND o.longitude = '-122.2251041'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oakland Heights Nursing and Rehabilitation'
        AND o.latitude = '37.794724'
        AND o.longitude = '-122.2251041'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oakland Heights Nursing and Rehabilitation'
        AND o.latitude = '37.794724'
        AND o.longitude = '-122.2251041'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oakland Heights Nursing and Rehabilitation'
        AND o.latitude = '37.794724'
        AND o.longitude = '-122.2251041'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oakland Heights Nursing and Rehabilitation'
        AND o.latitude = '37.794724'
        AND o.longitude = '-122.2251041'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oakland Heights Nursing and Rehabilitation'
        AND o.latitude = '37.794724'
        AND o.longitude = '-122.2251041'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oakland Heights Nursing and Rehabilitation'
        AND o.latitude = '37.794724'
        AND o.longitude = '-122.2251041'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oakland Heights Nursing and Rehabilitation'
        AND o.latitude = '37.794724'
        AND o.longitude = '-122.2251041'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oakland Heights Nursing and Rehabilitation'
        AND o.latitude = '37.794724'
        AND o.longitude = '-122.2251041'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Oakland Heights Nursing and Rehabilitation'
        AND o.latitude = '37.794724'
        AND o.longitude = '-122.2251041'));

COMMIT;
