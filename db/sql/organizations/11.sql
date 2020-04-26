
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
      'St. Clare Hospital',
      '11315 Bridgeport Way S.W.
Lakewood, WA 98499',
      'Lakewood',
      'WA',
      'Please deliver donations to ER security desk',
      'Yes',
      '47.1545124',
      '-122.5019772'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Clare Hospital'
        AND o.latitude = '47.1545124'
        AND o.longitude = '-122.5019772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Clare Hospital'
        AND o.latitude = '47.1545124'
        AND o.longitude = '-122.5019772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face Shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Clare Hospital'
        AND o.latitude = '47.1545124'
        AND o.longitude = '-122.5019772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable Booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Clare Hospital'
        AND o.latitude = '47.1545124'
        AND o.longitude = '-122.5019772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety Goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Clare Hospital'
        AND o.latitude = '47.1545124'
        AND o.longitude = '-122.5019772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Clare Hospital'
        AND o.latitude = '47.1545124'
        AND o.longitude = '-122.5019772'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Clare Hospital'
        AND o.latitude = '47.1545124'
        AND o.longitude = '-122.5019772'));

COMMIT;
