
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
      'Palo Alto Medical Foundation',
      '701 E El Camino Real
Mountain View, CA 94040',
      'Mountain View',
      'CA',
      'Attn: Kaitlin Thein in Pediatric Urgent Care',
      'Yes',
      '37.3765268',
      '-122.0651929'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation'
        AND o.latitude = '37.3765268'
        AND o.longitude = '-122.0651929'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation'
        AND o.latitude = '37.3765268'
        AND o.longitude = '-122.0651929'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation'
        AND o.latitude = '37.3765268'
        AND o.longitude = '-122.0651929'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation'
        AND o.latitude = '37.3765268'
        AND o.longitude = '-122.0651929'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation'
        AND o.latitude = '37.3765268'
        AND o.longitude = '-122.0651929'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation'
        AND o.latitude = '37.3765268'
        AND o.longitude = '-122.0651929'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation'
        AND o.latitude = '37.3765268'
        AND o.longitude = '-122.0651929'));

COMMIT;
