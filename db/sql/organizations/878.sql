
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
      'Reading Hospital - Tower Health',
      '420 S 5th Ave
West Reading, PA 19611',
      'West Reading',
      'PA',
      'Front desk Interventional Radiology',
      'Yes',
      '40.3298163',
      '-75.9493335'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reading Hospital - Tower Health'
        AND o.latitude = '40.3298163'
        AND o.longitude = '-75.9493335'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reading Hospital - Tower Health'
        AND o.latitude = '40.3298163'
        AND o.longitude = '-75.9493335'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reading Hospital - Tower Health'
        AND o.latitude = '40.3298163'
        AND o.longitude = '-75.9493335'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reading Hospital - Tower Health'
        AND o.latitude = '40.3298163'
        AND o.longitude = '-75.9493335'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reading Hospital - Tower Health'
        AND o.latitude = '40.3298163'
        AND o.longitude = '-75.9493335'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reading Hospital - Tower Health'
        AND o.latitude = '40.3298163'
        AND o.longitude = '-75.9493335'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reading Hospital - Tower Health'
        AND o.latitude = '40.3298163'
        AND o.longitude = '-75.9493335'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Reading Hospital - Tower Health'
        AND o.latitude = '40.3298163'
        AND o.longitude = '-75.9493335'));

COMMIT;
