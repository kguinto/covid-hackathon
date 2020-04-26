
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
      'Cancer Treatment Centers of America',
      '2520 Elisha Ave
Zion, IL 60099',
      'Zion',
      'IL',
      '',
      'No',
      '42.4488878',
      '-87.8275365'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cancer Treatment Centers of America'
        AND o.latitude = '42.4488878'
        AND o.longitude = '-87.8275365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cancer Treatment Centers of America'
        AND o.latitude = '42.4488878'
        AND o.longitude = '-87.8275365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cancer Treatment Centers of America'
        AND o.latitude = '42.4488878'
        AND o.longitude = '-87.8275365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cancer Treatment Centers of America'
        AND o.latitude = '42.4488878'
        AND o.longitude = '-87.8275365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cancer Treatment Centers of America'
        AND o.latitude = '42.4488878'
        AND o.longitude = '-87.8275365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cancer Treatment Centers of America'
        AND o.latitude = '42.4488878'
        AND o.longitude = '-87.8275365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cancer Treatment Centers of America'
        AND o.latitude = '42.4488878'
        AND o.longitude = '-87.8275365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cancer Treatment Centers of America'
        AND o.latitude = '42.4488878'
        AND o.longitude = '-87.8275365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cancer Treatment Centers of America'
        AND o.latitude = '42.4488878'
        AND o.longitude = '-87.8275365'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Cancer Treatment Centers of America'
        AND o.latitude = '42.4488878'
        AND o.longitude = '-87.8275365'));

COMMIT;
