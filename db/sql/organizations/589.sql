
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
      'Night Lite Pediatrics Urgent Care John Young FL',
      '5900 S John Young Pkwy
Orlando, FL 32839',
      'Orlando',
      'FL',
      'Mail or pick up, we have 13 locations',
      'Unsure',
      '28.4734397',
      '-81.4181542'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Night Lite Pediatrics Urgent Care John Young FL'
        AND o.latitude = '28.4734397'
        AND o.longitude = '-81.4181542'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Night Lite Pediatrics Urgent Care John Young FL'
        AND o.latitude = '28.4734397'
        AND o.longitude = '-81.4181542'));

COMMIT;
