
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
      'NorthShore University HealthSystem - Skokie Medical Office Building',
      '9669 Kenton Ave
Skokie, IL 60076',
      'Skokie',
      'IL',
      'Donation Box in Valet Parking Lot',
      'No',
      '42.056443',
      '-87.7403913'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'NorthShore University HealthSystem - Skokie Medical Office Building'
        AND o.latitude = '42.056443'
        AND o.longitude = '-87.7403913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'NorthShore University HealthSystem - Skokie Medical Office Building'
        AND o.latitude = '42.056443'
        AND o.longitude = '-87.7403913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'NorthShore University HealthSystem - Skokie Medical Office Building'
        AND o.latitude = '42.056443'
        AND o.longitude = '-87.7403913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'NorthShore University HealthSystem - Skokie Medical Office Building'
        AND o.latitude = '42.056443'
        AND o.longitude = '-87.7403913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'NorthShore University HealthSystem - Skokie Medical Office Building'
        AND o.latitude = '42.056443'
        AND o.longitude = '-87.7403913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'NorthShore University HealthSystem - Skokie Medical Office Building'
        AND o.latitude = '42.056443'
        AND o.longitude = '-87.7403913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'NorthShore University HealthSystem - Skokie Medical Office Building'
        AND o.latitude = '42.056443'
        AND o.longitude = '-87.7403913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'NorthShore University HealthSystem - Skokie Medical Office Building'
        AND o.latitude = '42.056443'
        AND o.longitude = '-87.7403913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'NorthShore University HealthSystem - Skokie Medical Office Building'
        AND o.latitude = '42.056443'
        AND o.longitude = '-87.7403913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'NorthShore University HealthSystem - Skokie Medical Office Building'
        AND o.latitude = '42.056443'
        AND o.longitude = '-87.7403913'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('NP SWABS',
    (SELECT id FROM organizations o
      WHERE o.name = 'NorthShore University HealthSystem - Skokie Medical Office Building'
        AND o.latitude = '42.056443'
        AND o.longitude = '-87.7403913'));

COMMIT;
