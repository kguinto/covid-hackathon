
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
      'Essential Diabetes and Endocrine Care',
      '6243 Fairmont Pkwy #104
Pasadena, TX 77505',
      'Pasadena',
      'TX',
      'Leave at employee entrance and knock on door',
      'No',
      '29.6511326',
      '-95.1442656'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Essential Diabetes and Endocrine Care'
        AND o.latitude = '29.6511326'
        AND o.longitude = '-95.1442656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Essential Diabetes and Endocrine Care'
        AND o.latitude = '29.6511326'
        AND o.longitude = '-95.1442656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Essential Diabetes and Endocrine Care'
        AND o.latitude = '29.6511326'
        AND o.longitude = '-95.1442656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Essential Diabetes and Endocrine Care'
        AND o.latitude = '29.6511326'
        AND o.longitude = '-95.1442656'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Essential Diabetes and Endocrine Care'
        AND o.latitude = '29.6511326'
        AND o.longitude = '-95.1442656'));

COMMIT;
