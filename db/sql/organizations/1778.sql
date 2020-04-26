
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
      'RWJBH New Brunswick ',
      '1 Robert Wood Johnson Place
New Brunswick, NJ 08901',
      'New Brunswick',
      'NJ',
      'Operating room',
      'I don''t know',
      '40.4864958',
      '-74.4155733'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'RWJBH New Brunswick '
        AND o.latitude = '40.4864958'
        AND o.longitude = '-74.4155733'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'RWJBH New Brunswick '
        AND o.latitude = '40.4864958'
        AND o.longitude = '-74.4155733'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'RWJBH New Brunswick '
        AND o.latitude = '40.4864958'
        AND o.longitude = '-74.4155733'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'RWJBH New Brunswick '
        AND o.latitude = '40.4864958'
        AND o.longitude = '-74.4155733'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'RWJBH New Brunswick '
        AND o.latitude = '40.4864958'
        AND o.longitude = '-74.4155733'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'RWJBH New Brunswick '
        AND o.latitude = '40.4864958'
        AND o.longitude = '-74.4155733'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'RWJBH New Brunswick '
        AND o.latitude = '40.4864958'
        AND o.longitude = '-74.4155733'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'RWJBH New Brunswick '
        AND o.latitude = '40.4864958'
        AND o.longitude = '-74.4155733'));

COMMIT;
