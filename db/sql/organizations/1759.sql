
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
      'A-TEC Ambulance',
      '340 Commerce Dr
Crystal Lake, IL 60014',
      'Crystal Lake',
      'IL',
      'Please drop off at office door',
      'Yes',
      '42.2504806',
      '-88.330156'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'A-TEC Ambulance'
        AND o.latitude = '42.2504806'
        AND o.longitude = '-88.330156'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'A-TEC Ambulance'
        AND o.latitude = '42.2504806'
        AND o.longitude = '-88.330156'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'A-TEC Ambulance'
        AND o.latitude = '42.2504806'
        AND o.longitude = '-88.330156'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'A-TEC Ambulance'
        AND o.latitude = '42.2504806'
        AND o.longitude = '-88.330156'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'A-TEC Ambulance'
        AND o.latitude = '42.2504806'
        AND o.longitude = '-88.330156'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'A-TEC Ambulance'
        AND o.latitude = '42.2504806'
        AND o.longitude = '-88.330156'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'A-TEC Ambulance'
        AND o.latitude = '42.2504806'
        AND o.longitude = '-88.330156'));

COMMIT;
