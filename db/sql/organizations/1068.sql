
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
      'Galveston County Health District',
      '9850 Emmett F Lowry Expy A114
Texas City, TX 77591',
      'Texas City',
      'TX',
      'Back of building and ring buzzer',
      'No',
      '29.404246',
      '-95.0170814'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Galveston County Health District'
        AND o.latitude = '29.404246'
        AND o.longitude = '-95.0170814'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Galveston County Health District'
        AND o.latitude = '29.404246'
        AND o.longitude = '-95.0170814'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Galveston County Health District'
        AND o.latitude = '29.404246'
        AND o.longitude = '-95.0170814'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Galveston County Health District'
        AND o.latitude = '29.404246'
        AND o.longitude = '-95.0170814'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Galveston County Health District'
        AND o.latitude = '29.404246'
        AND o.longitude = '-95.0170814'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Galveston County Health District'
        AND o.latitude = '29.404246'
        AND o.longitude = '-95.0170814'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Galveston County Health District'
        AND o.latitude = '29.404246'
        AND o.longitude = '-95.0170814'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Galveston County Health District'
        AND o.latitude = '29.404246'
        AND o.longitude = '-95.0170814'));

COMMIT;
