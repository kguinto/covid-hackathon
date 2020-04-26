
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
      'West Suburban Medical Center ',
      '3 Erie St
Oak Park, IL 60302',
      'Oak park ',
      'IL',
      '',
      'Yes',
      '41.8913716',
      '-87.7761143'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Suburban Medical Center '
        AND o.latitude = '41.8913716'
        AND o.longitude = '-87.7761143'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Suburban Medical Center '
        AND o.latitude = '41.8913716'
        AND o.longitude = '-87.7761143'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Suburban Medical Center '
        AND o.latitude = '41.8913716'
        AND o.longitude = '-87.7761143'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Suburban Medical Center '
        AND o.latitude = '41.8913716'
        AND o.longitude = '-87.7761143'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Suburban Medical Center '
        AND o.latitude = '41.8913716'
        AND o.longitude = '-87.7761143'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Suburban Medical Center '
        AND o.latitude = '41.8913716'
        AND o.longitude = '-87.7761143'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Suburban Medical Center '
        AND o.latitude = '41.8913716'
        AND o.longitude = '-87.7761143'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Suburban Medical Center '
        AND o.latitude = '41.8913716'
        AND o.longitude = '-87.7761143'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Suburban Medical Center '
        AND o.latitude = '41.8913716'
        AND o.longitude = '-87.7761143'));

COMMIT;
