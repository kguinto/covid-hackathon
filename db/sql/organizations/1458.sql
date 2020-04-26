
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
      'Mercyhealth Javon Bea Hospital',
      '2400 N Rockton Ave
Rockford, IL 61103',
      'Rockford',
      'IL',
      'Front entrance. someone will assist so you don''t have to go in to the hospital',
      'Yes',
      '42.2983388',
      '-89.0994064'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercyhealth Javon Bea Hospital'
        AND o.latitude = '42.2983388'
        AND o.longitude = '-89.0994064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercyhealth Javon Bea Hospital'
        AND o.latitude = '42.2983388'
        AND o.longitude = '-89.0994064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercyhealth Javon Bea Hospital'
        AND o.latitude = '42.2983388'
        AND o.longitude = '-89.0994064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercyhealth Javon Bea Hospital'
        AND o.latitude = '42.2983388'
        AND o.longitude = '-89.0994064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercyhealth Javon Bea Hospital'
        AND o.latitude = '42.2983388'
        AND o.longitude = '-89.0994064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercyhealth Javon Bea Hospital'
        AND o.latitude = '42.2983388'
        AND o.longitude = '-89.0994064'));

COMMIT;
