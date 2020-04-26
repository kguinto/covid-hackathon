
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
      '1385 W 2200 S Suite 201
West Valley City, UT 84119',
      'West Valley City',
      'UT',
      'Attn: Rebecca',
      'Yes',
      '40.7232686',
      '-111.9317087'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebridge Homecare'
        AND o.latitude = '40.7232686'
        AND o.longitude = '-111.9317087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebridge Homecare'
        AND o.latitude = '40.7232686'
        AND o.longitude = '-111.9317087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebridge Homecare'
        AND o.latitude = '40.7232686'
        AND o.longitude = '-111.9317087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebridge Homecare'
        AND o.latitude = '40.7232686'
        AND o.longitude = '-111.9317087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebridge Homecare'
        AND o.latitude = '40.7232686'
        AND o.longitude = '-111.9317087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebridge Homecare'
        AND o.latitude = '40.7232686'
        AND o.longitude = '-111.9317087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebridge Homecare'
        AND o.latitude = '40.7232686'
        AND o.longitude = '-111.9317087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stonebridge Homecare'
        AND o.latitude = '40.7232686'
        AND o.longitude = '-111.9317087'));

COMMIT;
