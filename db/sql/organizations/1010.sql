
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
      'St Francis Medical Center',
      '6001 E Woodmen Rd
Colorado Springs, CO 80923',
      'Colorado Springs',
      'CO',
      'Care of: ICU',
      'Yes',
      '38.9382571',
      '-104.7172707'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Francis Medical Center'
        AND o.latitude = '38.9382571'
        AND o.longitude = '-104.7172707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Francis Medical Center'
        AND o.latitude = '38.9382571'
        AND o.longitude = '-104.7172707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Francis Medical Center'
        AND o.latitude = '38.9382571'
        AND o.longitude = '-104.7172707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Francis Medical Center'
        AND o.latitude = '38.9382571'
        AND o.longitude = '-104.7172707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Francis Medical Center'
        AND o.latitude = '38.9382571'
        AND o.longitude = '-104.7172707'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St Francis Medical Center'
        AND o.latitude = '38.9382571'
        AND o.longitude = '-104.7172707'));

COMMIT;
