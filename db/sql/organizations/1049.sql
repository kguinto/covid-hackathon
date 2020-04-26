
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
      'O''Connor Hospital',
      '2105 Forest Ave
San Jose, CA 95128',
      'San Jose',
      'CA',
      'We are able to accept individual or small community organization donations at O''Connor Hospital at the loading dock in back of the hospital building:
M-F 6am-5pm (Dock)
or
Sat-Sun 10am-3pm (Front Lobby)',
      'No',
      '37.3277552',
      '-121.9383789'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'O''Connor Hospital'
        AND o.latitude = '37.3277552'
        AND o.longitude = '-121.9383789'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'O''Connor Hospital'
        AND o.latitude = '37.3277552'
        AND o.longitude = '-121.9383789'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'O''Connor Hospital'
        AND o.latitude = '37.3277552'
        AND o.longitude = '-121.9383789'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'O''Connor Hospital'
        AND o.latitude = '37.3277552'
        AND o.longitude = '-121.9383789'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'O''Connor Hospital'
        AND o.latitude = '37.3277552'
        AND o.longitude = '-121.9383789'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'O''Connor Hospital'
        AND o.latitude = '37.3277552'
        AND o.longitude = '-121.9383789'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'O''Connor Hospital'
        AND o.latitude = '37.3277552'
        AND o.longitude = '-121.9383789'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'O''Connor Hospital'
        AND o.latitude = '37.3277552'
        AND o.longitude = '-121.9383789'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'O''Connor Hospital'
        AND o.latitude = '37.3277552'
        AND o.longitude = '-121.9383789'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'O''Connor Hospital'
        AND o.latitude = '37.3277552'
        AND o.longitude = '-121.9383789'));

COMMIT;
