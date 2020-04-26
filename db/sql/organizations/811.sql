
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
      'Atoka County Medical Center',
      '1590 W Liberty Road
Atoka, OK 74525',
      'Atoka',
      'OK',
      '1590 W Liberty Road, Atoka OK 74525',
      'Unsure',
      '34.3933742',
      '-96.1544251'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atoka County Medical Center'
        AND o.latitude = '34.3933742'
        AND o.longitude = '-96.1544251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atoka County Medical Center'
        AND o.latitude = '34.3933742'
        AND o.longitude = '-96.1544251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atoka County Medical Center'
        AND o.latitude = '34.3933742'
        AND o.longitude = '-96.1544251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atoka County Medical Center'
        AND o.latitude = '34.3933742'
        AND o.longitude = '-96.1544251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atoka County Medical Center'
        AND o.latitude = '34.3933742'
        AND o.longitude = '-96.1544251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atoka County Medical Center'
        AND o.latitude = '34.3933742'
        AND o.longitude = '-96.1544251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atoka County Medical Center'
        AND o.latitude = '34.3933742'
        AND o.longitude = '-96.1544251'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Atoka County Medical Center'
        AND o.latitude = '34.3933742'
        AND o.longitude = '-96.1544251'));

COMMIT;
