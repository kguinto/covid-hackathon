
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
      'Ann & Robert H. Lurie Children''s Hospital of Chicago',
      '225 E Chicago Ave
Chicago, IL 60611',
      'Chicago',
      'IL',
      '',
      'Unsure',
      '41.8962222',
      '-87.6218345'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ann & Robert H. Lurie Children''s Hospital of Chicago'
        AND o.latitude = '41.8962222'
        AND o.longitude = '-87.6218345'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ann & Robert H. Lurie Children''s Hospital of Chicago'
        AND o.latitude = '41.8962222'
        AND o.longitude = '-87.6218345'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ann & Robert H. Lurie Children''s Hospital of Chicago'
        AND o.latitude = '41.8962222'
        AND o.longitude = '-87.6218345'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ann & Robert H. Lurie Children''s Hospital of Chicago'
        AND o.latitude = '41.8962222'
        AND o.longitude = '-87.6218345'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ann & Robert H. Lurie Children''s Hospital of Chicago'
        AND o.latitude = '41.8962222'
        AND o.longitude = '-87.6218345'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ann & Robert H. Lurie Children''s Hospital of Chicago'
        AND o.latitude = '41.8962222'
        AND o.longitude = '-87.6218345'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ann & Robert H. Lurie Children''s Hospital of Chicago'
        AND o.latitude = '41.8962222'
        AND o.longitude = '-87.6218345'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ann & Robert H. Lurie Children''s Hospital of Chicago'
        AND o.latitude = '41.8962222'
        AND o.longitude = '-87.6218345'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ann & Robert H. Lurie Children''s Hospital of Chicago'
        AND o.latitude = '41.8962222'
        AND o.longitude = '-87.6218345'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ann & Robert H. Lurie Children''s Hospital of Chicago'
        AND o.latitude = '41.8962222'
        AND o.longitude = '-87.6218345'));

COMMIT;
