
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
      'Mount Sinai Beth Israel',
      '281 1st Avenue
New York, NY 10003',
      'New York',
      'NY',
      'Please email us at ppebethisrael@gmail.com to coordinate drop off/shipments. Thank you for all your help!
- Mount Sinai Beth Israel Internal Medicine Residents',
      'Yes',
      '40.7330663',
      '-73.9819259'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Beth Israel'
        AND o.latitude = '40.7330663'
        AND o.longitude = '-73.9819259'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Beth Israel'
        AND o.latitude = '40.7330663'
        AND o.longitude = '-73.9819259'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Beth Israel'
        AND o.latitude = '40.7330663'
        AND o.longitude = '-73.9819259'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Beth Israel'
        AND o.latitude = '40.7330663'
        AND o.longitude = '-73.9819259'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Beth Israel'
        AND o.latitude = '40.7330663'
        AND o.longitude = '-73.9819259'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Beth Israel'
        AND o.latitude = '40.7330663'
        AND o.longitude = '-73.9819259'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Beth Israel'
        AND o.latitude = '40.7330663'
        AND o.longitude = '-73.9819259'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Beth Israel'
        AND o.latitude = '40.7330663'
        AND o.longitude = '-73.9819259'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mount Sinai Beth Israel'
        AND o.latitude = '40.7330663'
        AND o.longitude = '-73.9819259'));

COMMIT;
