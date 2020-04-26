
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
      'Morton Bakar Center',
      '494 Blossom Way
Hayward, CA 94541',
      'Hayward',
      'CA',
      '494 Blossom Way
Hayward, CA 94541',
      'Yes',
      '37.67883',
      '-122.1040261'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morton Bakar Center'
        AND o.latitude = '37.67883'
        AND o.longitude = '-122.1040261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morton Bakar Center'
        AND o.latitude = '37.67883'
        AND o.longitude = '-122.1040261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morton Bakar Center'
        AND o.latitude = '37.67883'
        AND o.longitude = '-122.1040261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morton Bakar Center'
        AND o.latitude = '37.67883'
        AND o.longitude = '-122.1040261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morton Bakar Center'
        AND o.latitude = '37.67883'
        AND o.longitude = '-122.1040261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morton Bakar Center'
        AND o.latitude = '37.67883'
        AND o.longitude = '-122.1040261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morton Bakar Center'
        AND o.latitude = '37.67883'
        AND o.longitude = '-122.1040261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morton Bakar Center'
        AND o.latitude = '37.67883'
        AND o.longitude = '-122.1040261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morton Bakar Center'
        AND o.latitude = '37.67883'
        AND o.longitude = '-122.1040261'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Morton Bakar Center'
        AND o.latitude = '37.67883'
        AND o.longitude = '-122.1040261'));

COMMIT;
