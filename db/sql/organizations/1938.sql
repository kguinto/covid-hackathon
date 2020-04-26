
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
      'PIH Health Downey Hospital ',
      '11500 Brookshire Ave
Downey, CA 90241',
      'Downey',
      'CA',
      'Drop off at ER in back of hospital or mail in',
      'Yes',
      '33.9350663',
      '-118.131987'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health Downey Hospital '
        AND o.latitude = '33.9350663'
        AND o.longitude = '-118.131987'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health Downey Hospital '
        AND o.latitude = '33.9350663'
        AND o.longitude = '-118.131987'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health Downey Hospital '
        AND o.latitude = '33.9350663'
        AND o.longitude = '-118.131987'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health Downey Hospital '
        AND o.latitude = '33.9350663'
        AND o.longitude = '-118.131987'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'PIH Health Downey Hospital '
        AND o.latitude = '33.9350663'
        AND o.longitude = '-118.131987'));

COMMIT;
