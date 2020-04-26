
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
      'Midwest Express Clinic ',
      '779 W Adams St
Chicago, IL 60661',
      'Chicago',
      'IL',
      '779 W Adams St',
      'Yes',
      '41.8789317',
      '-87.6470536'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic '
        AND o.latitude = '41.8789317'
        AND o.longitude = '-87.6470536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic '
        AND o.latitude = '41.8789317'
        AND o.longitude = '-87.6470536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic '
        AND o.latitude = '41.8789317'
        AND o.longitude = '-87.6470536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic '
        AND o.latitude = '41.8789317'
        AND o.longitude = '-87.6470536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic '
        AND o.latitude = '41.8789317'
        AND o.longitude = '-87.6470536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic '
        AND o.latitude = '41.8789317'
        AND o.longitude = '-87.6470536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic '
        AND o.latitude = '41.8789317'
        AND o.longitude = '-87.6470536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic '
        AND o.latitude = '41.8789317'
        AND o.longitude = '-87.6470536'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic '
        AND o.latitude = '41.8789317'
        AND o.longitude = '-87.6470536'));

COMMIT;
