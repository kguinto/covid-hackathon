
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
      'Michigan Medicine',
      '2800 Plymouth Road
Ann Arbor, MI 48109',
      'Ann Arbor',
      'MI',
      'https://www.uofmhealth.org/news/archive/202003/u-m-asks-community-donate-gear-protect-health-care-workers',
      'No',
      '42.3008837',
      '-83.706502'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine'
        AND o.latitude = '42.3008837'
        AND o.longitude = '-83.706502'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine'
        AND o.latitude = '42.3008837'
        AND o.longitude = '-83.706502'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine'
        AND o.latitude = '42.3008837'
        AND o.longitude = '-83.706502'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine'
        AND o.latitude = '42.3008837'
        AND o.longitude = '-83.706502'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine'
        AND o.latitude = '42.3008837'
        AND o.longitude = '-83.706502'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine'
        AND o.latitude = '42.3008837'
        AND o.longitude = '-83.706502'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine'
        AND o.latitude = '42.3008837'
        AND o.longitude = '-83.706502'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine'
        AND o.latitude = '42.3008837'
        AND o.longitude = '-83.706502'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Michigan Medicine'
        AND o.latitude = '42.3008837'
        AND o.longitude = '-83.706502'));

COMMIT;
