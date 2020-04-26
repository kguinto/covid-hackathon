
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
      'Infinity Rehab',
      '25117 SW Parkway Avenue, Suite D
Wilsonville, OR 97070',
      'Wilsonville',
      'OR',
      '',
      'Yes',
      '45.3386863',
      '-122.7681029'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Infinity Rehab'
        AND o.latitude = '45.3386863'
        AND o.longitude = '-122.7681029'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Infinity Rehab'
        AND o.latitude = '45.3386863'
        AND o.longitude = '-122.7681029'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Infinity Rehab'
        AND o.latitude = '45.3386863'
        AND o.longitude = '-122.7681029'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Infinity Rehab'
        AND o.latitude = '45.3386863'
        AND o.longitude = '-122.7681029'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Infinity Rehab'
        AND o.latitude = '45.3386863'
        AND o.longitude = '-122.7681029'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Infinity Rehab'
        AND o.latitude = '45.3386863'
        AND o.longitude = '-122.7681029'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Infinity Rehab'
        AND o.latitude = '45.3386863'
        AND o.longitude = '-122.7681029'));

COMMIT;
