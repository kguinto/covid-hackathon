
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
      'Medical Respite & Sobering Center',
      '1171 Mission St 2nd Floor
San Francisco, CA 94103',
      'San Francisco',
      'CA',
      '1171 Mission St. 2nd Floor',
      'Yes',
      '37.7776385',
      '-122.4123048'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Respite & Sobering Center'
        AND o.latitude = '37.7776385'
        AND o.longitude = '-122.4123048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Respite & Sobering Center'
        AND o.latitude = '37.7776385'
        AND o.longitude = '-122.4123048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Respite & Sobering Center'
        AND o.latitude = '37.7776385'
        AND o.longitude = '-122.4123048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Respite & Sobering Center'
        AND o.latitude = '37.7776385'
        AND o.longitude = '-122.4123048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Respite & Sobering Center'
        AND o.latitude = '37.7776385'
        AND o.longitude = '-122.4123048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Respite & Sobering Center'
        AND o.latitude = '37.7776385'
        AND o.longitude = '-122.4123048'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical Respite & Sobering Center'
        AND o.latitude = '37.7776385'
        AND o.longitude = '-122.4123048'));

COMMIT;
