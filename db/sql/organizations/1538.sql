
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
      'Virginia Mason',
      '1100 9th Ave
Seattle, WA 98101',
      'Seatte',
      'WA',
      'There is a Drop Box inside of the Buck Pavilion entrance near the security guard.  ',
      'No',
      '47.6094886',
      '-122.327968'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Mason'
        AND o.latitude = '47.6094886'
        AND o.longitude = '-122.327968'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Mason'
        AND o.latitude = '47.6094886'
        AND o.longitude = '-122.327968'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Mason'
        AND o.latitude = '47.6094886'
        AND o.longitude = '-122.327968'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Mason'
        AND o.latitude = '47.6094886'
        AND o.longitude = '-122.327968'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Mason'
        AND o.latitude = '47.6094886'
        AND o.longitude = '-122.327968'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Mason'
        AND o.latitude = '47.6094886'
        AND o.longitude = '-122.327968'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virginia Mason'
        AND o.latitude = '47.6094886'
        AND o.longitude = '-122.327968'));

COMMIT;
