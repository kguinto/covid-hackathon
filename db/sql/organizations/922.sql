
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
      'Central Texas Community Health Centers',
      '2115 Kramer Ln #100
Austin, TX 78758',
      'Austin',
      'TX',
      'CommUnityCare Central Central Warehouse, Tiahra Kellar',
      'Yes',
      '30.3890723',
      '-97.7126604'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central Texas Community Health Centers'
        AND o.latitude = '30.3890723'
        AND o.longitude = '-97.7126604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central Texas Community Health Centers'
        AND o.latitude = '30.3890723'
        AND o.longitude = '-97.7126604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central Texas Community Health Centers'
        AND o.latitude = '30.3890723'
        AND o.longitude = '-97.7126604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central Texas Community Health Centers'
        AND o.latitude = '30.3890723'
        AND o.longitude = '-97.7126604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central Texas Community Health Centers'
        AND o.latitude = '30.3890723'
        AND o.longitude = '-97.7126604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central Texas Community Health Centers'
        AND o.latitude = '30.3890723'
        AND o.longitude = '-97.7126604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central Texas Community Health Centers'
        AND o.latitude = '30.3890723'
        AND o.longitude = '-97.7126604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central Texas Community Health Centers'
        AND o.latitude = '30.3890723'
        AND o.longitude = '-97.7126604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central Texas Community Health Centers'
        AND o.latitude = '30.3890723'
        AND o.longitude = '-97.7126604'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometer covers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Central Texas Community Health Centers'
        AND o.latitude = '30.3890723'
        AND o.longitude = '-97.7126604'));

COMMIT;
