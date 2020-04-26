
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
      'AMITA Saint Joseph Hospital Chicago',
      '2845 N Sheridan Rd
Chicago, IL 60657',
      'Chicago',
      'IL',
      'Please contact Dr. Garcia at 812-320-0912 or 773-665-9920',
      'Yes',
      '41.9340062',
      '-87.6390023'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'AMITA Saint Joseph Hospital Chicago'
        AND o.latitude = '41.9340062'
        AND o.longitude = '-87.6390023'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'AMITA Saint Joseph Hospital Chicago'
        AND o.latitude = '41.9340062'
        AND o.longitude = '-87.6390023'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'AMITA Saint Joseph Hospital Chicago'
        AND o.latitude = '41.9340062'
        AND o.longitude = '-87.6390023'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'AMITA Saint Joseph Hospital Chicago'
        AND o.latitude = '41.9340062'
        AND o.longitude = '-87.6390023'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'AMITA Saint Joseph Hospital Chicago'
        AND o.latitude = '41.9340062'
        AND o.longitude = '-87.6390023'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'AMITA Saint Joseph Hospital Chicago'
        AND o.latitude = '41.9340062'
        AND o.longitude = '-87.6390023'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'AMITA Saint Joseph Hospital Chicago'
        AND o.latitude = '41.9340062'
        AND o.longitude = '-87.6390023'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'AMITA Saint Joseph Hospital Chicago'
        AND o.latitude = '41.9340062'
        AND o.longitude = '-87.6390023'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'AMITA Saint Joseph Hospital Chicago'
        AND o.latitude = '41.9340062'
        AND o.longitude = '-87.6390023'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'AMITA Saint Joseph Hospital Chicago'
        AND o.latitude = '41.9340062'
        AND o.longitude = '-87.6390023'));

COMMIT;
