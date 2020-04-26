
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
      'Willow Brooke Point Senior Living',
      '1800 Bluebell Ln
Stevens Point, WI 54481',
      'Stevens Point',
      'WI',
      'Please ring doorbell',
      'Yes',
      '44.5505899',
      '-89.5739358'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willow Brooke Point Senior Living'
        AND o.latitude = '44.5505899'
        AND o.longitude = '-89.5739358'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willow Brooke Point Senior Living'
        AND o.latitude = '44.5505899'
        AND o.longitude = '-89.5739358'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willow Brooke Point Senior Living'
        AND o.latitude = '44.5505899'
        AND o.longitude = '-89.5739358'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willow Brooke Point Senior Living'
        AND o.latitude = '44.5505899'
        AND o.longitude = '-89.5739358'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willow Brooke Point Senior Living'
        AND o.latitude = '44.5505899'
        AND o.longitude = '-89.5739358'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willow Brooke Point Senior Living'
        AND o.latitude = '44.5505899'
        AND o.longitude = '-89.5739358'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willow Brooke Point Senior Living'
        AND o.latitude = '44.5505899'
        AND o.longitude = '-89.5739358'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willow Brooke Point Senior Living'
        AND o.latitude = '44.5505899'
        AND o.longitude = '-89.5739358'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willow Brooke Point Senior Living'
        AND o.latitude = '44.5505899'
        AND o.longitude = '-89.5739358'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Willow Brooke Point Senior Living'
        AND o.latitude = '44.5505899'
        AND o.longitude = '-89.5739358'));

COMMIT;
