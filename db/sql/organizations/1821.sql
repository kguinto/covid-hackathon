
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
      'John H. Stroger Jr. Hospital of Cook County ',
      '1969 Ogden Ave
Chicago, IL 60612',
      'Chicago',
      'IL',
      'ER door #2, drop off to ER charge nurse',
      'Yes',
      '41.8727494',
      '-87.6757854'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'John H. Stroger Jr. Hospital of Cook County '
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'John H. Stroger Jr. Hospital of Cook County '
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'John H. Stroger Jr. Hospital of Cook County '
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'John H. Stroger Jr. Hospital of Cook County '
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'John H. Stroger Jr. Hospital of Cook County '
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'John H. Stroger Jr. Hospital of Cook County '
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'John H. Stroger Jr. Hospital of Cook County '
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'John H. Stroger Jr. Hospital of Cook County '
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'John H. Stroger Jr. Hospital of Cook County '
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable stethoscopes',
    (SELECT id FROM organizations o
      WHERE o.name = 'John H. Stroger Jr. Hospital of Cook County '
        AND o.latitude = '41.8727494'
        AND o.longitude = '-87.6757854'));

COMMIT;
