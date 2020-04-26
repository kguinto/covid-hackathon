
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
      'Lone Star Family Health Center',
      '605 S, Conroe Medical Dr
Conroe, TX 77304',
      'Conroe',
      'TX',
      'Curbside drop at building entrance. Staff are stationed outside. ',
      'Yes',
      '30.285503',
      '-95.4713917'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lone Star Family Health Center'
        AND o.latitude = '30.285503'
        AND o.longitude = '-95.4713917'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lone Star Family Health Center'
        AND o.latitude = '30.285503'
        AND o.longitude = '-95.4713917'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lone Star Family Health Center'
        AND o.latitude = '30.285503'
        AND o.longitude = '-95.4713917'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lone Star Family Health Center'
        AND o.latitude = '30.285503'
        AND o.longitude = '-95.4713917'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lone Star Family Health Center'
        AND o.latitude = '30.285503'
        AND o.longitude = '-95.4713917'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lone Star Family Health Center'
        AND o.latitude = '30.285503'
        AND o.longitude = '-95.4713917'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lone Star Family Health Center'
        AND o.latitude = '30.285503'
        AND o.longitude = '-95.4713917'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lone Star Family Health Center'
        AND o.latitude = '30.285503'
        AND o.longitude = '-95.4713917'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lone Star Family Health Center'
        AND o.latitude = '30.285503'
        AND o.longitude = '-95.4713917'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lone Star Family Health Center'
        AND o.latitude = '30.285503'
        AND o.longitude = '-95.4713917'));

COMMIT;
