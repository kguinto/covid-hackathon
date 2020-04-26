
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
      'Marshall Medical Center',
      '1100 Marshall Way
Placerville, CA 95667',
      'Placerville',
      'CA',
      'sehall@marshallmedical.org',
      'Yes',
      '38.72467',
      '-120.7916501'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshall Medical Center'
        AND o.latitude = '38.72467'
        AND o.longitude = '-120.7916501'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshall Medical Center'
        AND o.latitude = '38.72467'
        AND o.longitude = '-120.7916501'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshall Medical Center'
        AND o.latitude = '38.72467'
        AND o.longitude = '-120.7916501'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshall Medical Center'
        AND o.latitude = '38.72467'
        AND o.longitude = '-120.7916501'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshall Medical Center'
        AND o.latitude = '38.72467'
        AND o.longitude = '-120.7916501'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshall Medical Center'
        AND o.latitude = '38.72467'
        AND o.longitude = '-120.7916501'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshall Medical Center'
        AND o.latitude = '38.72467'
        AND o.longitude = '-120.7916501'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshall Medical Center'
        AND o.latitude = '38.72467'
        AND o.longitude = '-120.7916501'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marshall Medical Center'
        AND o.latitude = '38.72467'
        AND o.longitude = '-120.7916501'));

COMMIT;
