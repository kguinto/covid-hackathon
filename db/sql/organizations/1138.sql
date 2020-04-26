
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
      'Meadow Creek Senior Living ',
      '2400 W Pleasant Run Rd
Lancaster, TX 75146',
      'Lancaster ',
      'TX',
      'Ring doorbell, staff will open door, supplies can be dropped off with staff member',
      'Yes',
      '32.6035679',
      '-96.8095202'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadow Creek Senior Living '
        AND o.latitude = '32.6035679'
        AND o.longitude = '-96.8095202'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadow Creek Senior Living '
        AND o.latitude = '32.6035679'
        AND o.longitude = '-96.8095202'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadow Creek Senior Living '
        AND o.latitude = '32.6035679'
        AND o.longitude = '-96.8095202'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadow Creek Senior Living '
        AND o.latitude = '32.6035679'
        AND o.longitude = '-96.8095202'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadow Creek Senior Living '
        AND o.latitude = '32.6035679'
        AND o.longitude = '-96.8095202'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadow Creek Senior Living '
        AND o.latitude = '32.6035679'
        AND o.longitude = '-96.8095202'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadow Creek Senior Living '
        AND o.latitude = '32.6035679'
        AND o.longitude = '-96.8095202'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadow Creek Senior Living '
        AND o.latitude = '32.6035679'
        AND o.longitude = '-96.8095202'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadow Creek Senior Living '
        AND o.latitude = '32.6035679'
        AND o.longitude = '-96.8095202'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadow Creek Senior Living '
        AND o.latitude = '32.6035679'
        AND o.longitude = '-96.8095202'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Cleaning Supplies',
    (SELECT id FROM organizations o
      WHERE o.name = 'Meadow Creek Senior Living '
        AND o.latitude = '32.6035679'
        AND o.longitude = '-96.8095202'));

COMMIT;
