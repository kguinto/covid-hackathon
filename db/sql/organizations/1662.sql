
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
      'Kaiser Zion ER',
      '4647 Zion Ave
San Diego, CA 92120',
      'San Diego',
      'CA',
      'San Diego',
      'Yes',
      '32.7916133',
      '-117.0954049'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Zion ER'
        AND o.latitude = '32.7916133'
        AND o.longitude = '-117.0954049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Zion ER'
        AND o.latitude = '32.7916133'
        AND o.longitude = '-117.0954049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Zion ER'
        AND o.latitude = '32.7916133'
        AND o.longitude = '-117.0954049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Zion ER'
        AND o.latitude = '32.7916133'
        AND o.longitude = '-117.0954049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Zion ER'
        AND o.latitude = '32.7916133'
        AND o.longitude = '-117.0954049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Zion ER'
        AND o.latitude = '32.7916133'
        AND o.longitude = '-117.0954049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Zion ER'
        AND o.latitude = '32.7916133'
        AND o.longitude = '-117.0954049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Zion ER'
        AND o.latitude = '32.7916133'
        AND o.longitude = '-117.0954049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Zion ER'
        AND o.latitude = '32.7916133'
        AND o.longitude = '-117.0954049'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Zion ER'
        AND o.latitude = '32.7916133'
        AND o.longitude = '-117.0954049'));

COMMIT;
