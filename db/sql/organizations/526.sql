
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
      'Preferred Medical Group',
      '3700 S Railroad St Suite A
Phenix City, AL 36867',
      'Phenix City',
      'AL',
      'In person or by mail',
      'Unsure',
      '32.4984868',
      '-85.0415064'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preferred Medical Group'
        AND o.latitude = '32.4984868'
        AND o.longitude = '-85.0415064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preferred Medical Group'
        AND o.latitude = '32.4984868'
        AND o.longitude = '-85.0415064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preferred Medical Group'
        AND o.latitude = '32.4984868'
        AND o.longitude = '-85.0415064'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Preferred Medical Group'
        AND o.latitude = '32.4984868'
        AND o.longitude = '-85.0415064'));

COMMIT;
