
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
      'Family Guidance Centers, INC',
      '310 W Chicago Ave
Chicago, IL 60654',
      'Chicago',
      'IL',
      'Curbside is great!',
      'Yes',
      '41.8967625',
      '-87.6363993'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Guidance Centers, INC'
        AND o.latitude = '41.8967625'
        AND o.longitude = '-87.6363993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Guidance Centers, INC'
        AND o.latitude = '41.8967625'
        AND o.longitude = '-87.6363993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Guidance Centers, INC'
        AND o.latitude = '41.8967625'
        AND o.longitude = '-87.6363993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Guidance Centers, INC'
        AND o.latitude = '41.8967625'
        AND o.longitude = '-87.6363993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Guidance Centers, INC'
        AND o.latitude = '41.8967625'
        AND o.longitude = '-87.6363993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Guidance Centers, INC'
        AND o.latitude = '41.8967625'
        AND o.longitude = '-87.6363993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Guidance Centers, INC'
        AND o.latitude = '41.8967625'
        AND o.longitude = '-87.6363993'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Family Guidance Centers, INC'
        AND o.latitude = '41.8967625'
        AND o.longitude = '-87.6363993'));

COMMIT;
