
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
      'Norway Hill Adult Family Homes',
      '16721 107th Pl NE
Bothell, WA 98011',
      'Bothell',
      'WA',
      'Please drop off at the entrance of the driveway. Not the care home door as we protect the elderly from the virus.',
      'Yes',
      '47.7489406',
      '-122.1999071'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norway Hill Adult Family Homes'
        AND o.latitude = '47.7489406'
        AND o.longitude = '-122.1999071'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norway Hill Adult Family Homes'
        AND o.latitude = '47.7489406'
        AND o.longitude = '-122.1999071'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norway Hill Adult Family Homes'
        AND o.latitude = '47.7489406'
        AND o.longitude = '-122.1999071'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norway Hill Adult Family Homes'
        AND o.latitude = '47.7489406'
        AND o.longitude = '-122.1999071'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norway Hill Adult Family Homes'
        AND o.latitude = '47.7489406'
        AND o.longitude = '-122.1999071'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norway Hill Adult Family Homes'
        AND o.latitude = '47.7489406'
        AND o.longitude = '-122.1999071'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norway Hill Adult Family Homes'
        AND o.latitude = '47.7489406'
        AND o.longitude = '-122.1999071'));

COMMIT;
