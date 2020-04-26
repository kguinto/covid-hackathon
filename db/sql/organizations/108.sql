
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
      'Northern Light Health',
      '70 Bennett St
Bangor, ME 04401',
      'Bangor',
      'ME',
      'Contact Tim Plossay AVP Supply Chain 207-620-0364  for drop off at Warehouse  or pick up instructions',
      'Yes',
      '44.7895722',
      '-68.8358536'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Light Health'
        AND o.latitude = '44.7895722'
        AND o.longitude = '-68.8358536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Light Health'
        AND o.latitude = '44.7895722'
        AND o.longitude = '-68.8358536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Light Health'
        AND o.latitude = '44.7895722'
        AND o.longitude = '-68.8358536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Light Health'
        AND o.latitude = '44.7895722'
        AND o.longitude = '-68.8358536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Light Health'
        AND o.latitude = '44.7895722'
        AND o.longitude = '-68.8358536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Light Health'
        AND o.latitude = '44.7895722'
        AND o.longitude = '-68.8358536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Light Health'
        AND o.latitude = '44.7895722'
        AND o.longitude = '-68.8358536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Light Health'
        AND o.latitude = '44.7895722'
        AND o.longitude = '-68.8358536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Light Health'
        AND o.latitude = '44.7895722'
        AND o.longitude = '-68.8358536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Northern Light Health'
        AND o.latitude = '44.7895722'
        AND o.longitude = '-68.8358536'));

COMMIT;
