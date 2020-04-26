
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
      'Franciscan St. Margaret''s ',
      '5454 Hohman Ave
Hammond, IN 46320',
      'Hammond',
      'IN',
      'Mailing address ATTN: Pam Jones',
      'Yes',
      '41.6151781',
      '-87.5238812'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan St. Margaret''s '
        AND o.latitude = '41.6151781'
        AND o.longitude = '-87.5238812'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan St. Margaret''s '
        AND o.latitude = '41.6151781'
        AND o.longitude = '-87.5238812'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan St. Margaret''s '
        AND o.latitude = '41.6151781'
        AND o.longitude = '-87.5238812'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan St. Margaret''s '
        AND o.latitude = '41.6151781'
        AND o.longitude = '-87.5238812'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan St. Margaret''s '
        AND o.latitude = '41.6151781'
        AND o.longitude = '-87.5238812'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan St. Margaret''s '
        AND o.latitude = '41.6151781'
        AND o.longitude = '-87.5238812'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan St. Margaret''s '
        AND o.latitude = '41.6151781'
        AND o.longitude = '-87.5238812'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan St. Margaret''s '
        AND o.latitude = '41.6151781'
        AND o.longitude = '-87.5238812'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan St. Margaret''s '
        AND o.latitude = '41.6151781'
        AND o.longitude = '-87.5238812'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan St. Margaret''s '
        AND o.latitude = '41.6151781'
        AND o.longitude = '-87.5238812'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Ventilators',
    (SELECT id FROM organizations o
      WHERE o.name = 'Franciscan St. Margaret''s '
        AND o.latitude = '41.6151781'
        AND o.longitude = '-87.5238812'));

COMMIT;
