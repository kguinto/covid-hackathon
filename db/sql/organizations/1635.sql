
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
      'Virginia Mason ',
      'Lindeman Pavilion
1201 Terry Ave, Seattle, WA 98101',
      'Seattle',
      'WA',
      'There is a drop off bin just inside the Lindeman Pavilion Entrance',
      'No',
      '47.6103807',
      '-122.3279897'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Mason '
        AND o.latitude = '47.6103807'
        AND o.longitude = '-122.3279897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Mason '
        AND o.latitude = '47.6103807'
        AND o.longitude = '-122.3279897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Mason '
        AND o.latitude = '47.6103807'
        AND o.longitude = '-122.3279897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Mason '
        AND o.latitude = '47.6103807'
        AND o.longitude = '-122.3279897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Mason '
        AND o.latitude = '47.6103807'
        AND o.longitude = '-122.3279897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Mason '
        AND o.latitude = '47.6103807'
        AND o.longitude = '-122.3279897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Mason '
        AND o.latitude = '47.6103807'
        AND o.longitude = '-122.3279897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Mason '
        AND o.latitude = '47.6103807'
        AND o.longitude = '-122.3279897'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Mason '
        AND o.latitude = '47.6103807'
        AND o.longitude = '-122.3279897'));

COMMIT;
