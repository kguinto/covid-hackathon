
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
      'Macedonia Fire Department',
      '9691 Valley View Rd
Macedonia, OH 44056',
      'Macedonia',
      'OH',
      'Call department at (330) 468-8339, city building is closed',
      'Yes',
      '41.3117491',
      '-81.5039625'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Macedonia Fire Department'
        AND o.latitude = '41.3117491'
        AND o.longitude = '-81.5039625'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Macedonia Fire Department'
        AND o.latitude = '41.3117491'
        AND o.longitude = '-81.5039625'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Macedonia Fire Department'
        AND o.latitude = '41.3117491'
        AND o.longitude = '-81.5039625'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Macedonia Fire Department'
        AND o.latitude = '41.3117491'
        AND o.longitude = '-81.5039625'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Macedonia Fire Department'
        AND o.latitude = '41.3117491'
        AND o.longitude = '-81.5039625'));

COMMIT;
