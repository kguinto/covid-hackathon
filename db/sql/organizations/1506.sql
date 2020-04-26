
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
      'Los Angeles Christian Health Centers',
      '311 Winston St
Los Angeles, CA 90013',
      'Los Angeles',
      'CA',
      'Drop off at Curbside: ATTN Jesse Wu',
      'Yes',
      '34.0456776',
      '-118.2447133'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Christian Health Centers'
        AND o.latitude = '34.0456776'
        AND o.longitude = '-118.2447133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Christian Health Centers'
        AND o.latitude = '34.0456776'
        AND o.longitude = '-118.2447133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Christian Health Centers'
        AND o.latitude = '34.0456776'
        AND o.longitude = '-118.2447133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Christian Health Centers'
        AND o.latitude = '34.0456776'
        AND o.longitude = '-118.2447133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Christian Health Centers'
        AND o.latitude = '34.0456776'
        AND o.longitude = '-118.2447133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Christian Health Centers'
        AND o.latitude = '34.0456776'
        AND o.longitude = '-118.2447133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Christian Health Centers'
        AND o.latitude = '34.0456776'
        AND o.longitude = '-118.2447133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Christian Health Centers'
        AND o.latitude = '34.0456776'
        AND o.longitude = '-118.2447133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Christian Health Centers'
        AND o.latitude = '34.0456776'
        AND o.longitude = '-118.2447133'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles Christian Health Centers'
        AND o.latitude = '34.0456776'
        AND o.longitude = '-118.2447133'));

COMMIT;
