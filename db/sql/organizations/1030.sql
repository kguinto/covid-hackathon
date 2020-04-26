
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
      'Stonebridge Homecare',
      '373 N University Ave #104
Provo, UT 84601',
      'Provo ',
      'UT',
      'Attn: Cynthia Johnson',
      'Yes',
      '40.2386549',
      '-111.6591152'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebridge Homecare'
        AND o.latitude = '40.2386549'
        AND o.longitude = '-111.6591152'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebridge Homecare'
        AND o.latitude = '40.2386549'
        AND o.longitude = '-111.6591152'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebridge Homecare'
        AND o.latitude = '40.2386549'
        AND o.longitude = '-111.6591152'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebridge Homecare'
        AND o.latitude = '40.2386549'
        AND o.longitude = '-111.6591152'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebridge Homecare'
        AND o.latitude = '40.2386549'
        AND o.longitude = '-111.6591152'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebridge Homecare'
        AND o.latitude = '40.2386549'
        AND o.longitude = '-111.6591152'));

COMMIT;
