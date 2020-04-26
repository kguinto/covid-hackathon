
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
      'Stroger Cook County Hospital',
      '1969 Ogden Ave
Chicago, IL 60612',
      'Chicago',
      'IL',
      'Ship to address, Attn: Cardiology',
      'Unsure',
      '41.8727494',
      '-87.6757854'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stroger Cook County Hospital'
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stroger Cook County Hospital'
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stroger Cook County Hospital'
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hands Soap',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stroger Cook County Hospital'
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Paper Towels',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stroger Cook County Hospital'
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Negative Isolation room',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stroger Cook County Hospital'
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('PPE Uniforms',
    (SELECT id FROM organizations o
      WHERE o.name = 'Stroger Cook County Hospital'
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

COMMIT;
