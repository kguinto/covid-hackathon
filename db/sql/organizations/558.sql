
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
      'Physicians Immediate Care',
      '6595 E State St
Rockford, IL 61108',
      'Rockford',
      'IL',
      '',
      'Unsure',
      '42.2675026',
      '-88.9880117'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Immediate Care'
        AND o.latitude = '42.2675026'
        AND o.longitude = '-88.9880117'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Immediate Care'
        AND o.latitude = '42.2675026'
        AND o.longitude = '-88.9880117'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Immediate Care'
        AND o.latitude = '42.2675026'
        AND o.longitude = '-88.9880117'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Immediate Care'
        AND o.latitude = '42.2675026'
        AND o.longitude = '-88.9880117'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Immediate Care'
        AND o.latitude = '42.2675026'
        AND o.longitude = '-88.9880117'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Immediate Care'
        AND o.latitude = '42.2675026'
        AND o.longitude = '-88.9880117'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Immediate Care'
        AND o.latitude = '42.2675026'
        AND o.longitude = '-88.9880117'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Immediate Care'
        AND o.latitude = '42.2675026'
        AND o.longitude = '-88.9880117'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Immediate Care'
        AND o.latitude = '42.2675026'
        AND o.longitude = '-88.9880117'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Immediate Care'
        AND o.latitude = '42.2675026'
        AND o.longitude = '-88.9880117'));

COMMIT;
