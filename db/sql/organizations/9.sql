
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
      'Swedish Edmonds',
      '21601 76th Ave W
Edmonds, WA 98026',
      'Edmonds',
      'WA',
      'First Floor Main Entrance off of Highway 99',
      'Yes',
      '47.8033141',
      '-122.3344445'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Edmonds'
        AND o.latitude = '47.8033141'
        AND o.longitude = '-122.3344445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Edmonds'
        AND o.latitude = '47.8033141'
        AND o.longitude = '-122.3344445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety Goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Edmonds'
        AND o.latitude = '47.8033141'
        AND o.longitude = '-122.3344445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Edmonds'
        AND o.latitude = '47.8033141'
        AND o.longitude = '-122.3344445'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face Shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Swedish Edmonds'
        AND o.latitude = '47.8033141'
        AND o.longitude = '-122.3344445'));

COMMIT;
