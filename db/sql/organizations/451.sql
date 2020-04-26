
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
      'Penrose-St Francis ',
      'Emergency Dept
2222 N Nevada Ave
Colorado Springs, CO 80907',
      'Colorado Springs ',
      'CO',
      'Deliver to Emergency Department',
      'Yes',
      '38.866122',
      '-104.8223517'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penrose-St Francis '
        AND o.latitude = '38.866122'
        AND o.longitude = '-104.8223517'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penrose-St Francis '
        AND o.latitude = '38.866122'
        AND o.longitude = '-104.8223517'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penrose-St Francis '
        AND o.latitude = '38.866122'
        AND o.longitude = '-104.8223517'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penrose-St Francis '
        AND o.latitude = '38.866122'
        AND o.longitude = '-104.8223517'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penrose-St Francis '
        AND o.latitude = '38.866122'
        AND o.longitude = '-104.8223517'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penrose-St Francis '
        AND o.latitude = '38.866122'
        AND o.longitude = '-104.8223517'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penrose-St Francis '
        AND o.latitude = '38.866122'
        AND o.longitude = '-104.8223517'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Penrose-St Francis '
        AND o.latitude = '38.866122'
        AND o.longitude = '-104.8223517'));

COMMIT;
