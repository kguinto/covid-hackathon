
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
      'Mercy Gilbert Medical Center',
      '3451 E Tyson St
Gilbert, AZ 85295',
      'GILBERT',
      'AZ',
      'Residential address. Alternate residential address: 1018 Osprey Ct., Gilbert, AZ 85234',
      'No',
      '33.3108595',
      '-111.715749'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Gilbert Medical Center'
        AND o.latitude = '33.3108595'
        AND o.longitude = '-111.715749'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Gilbert Medical Center'
        AND o.latitude = '33.3108595'
        AND o.longitude = '-111.715749'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Gilbert Medical Center'
        AND o.latitude = '33.3108595'
        AND o.longitude = '-111.715749'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Gilbert Medical Center'
        AND o.latitude = '33.3108595'
        AND o.longitude = '-111.715749'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Gilbert Medical Center'
        AND o.latitude = '33.3108595'
        AND o.longitude = '-111.715749'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Gilbert Medical Center'
        AND o.latitude = '33.3108595'
        AND o.longitude = '-111.715749'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Gilbert Medical Center'
        AND o.latitude = '33.3108595'
        AND o.longitude = '-111.715749'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Gilbert Medical Center'
        AND o.latitude = '33.3108595'
        AND o.longitude = '-111.715749'));

COMMIT;
