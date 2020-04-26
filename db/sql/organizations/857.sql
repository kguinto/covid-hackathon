
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
      'University Pediatric Dentistry (for Emergency Dental Care',
      '1100 Main St
Buffalo, NY 14209',
      'Buffalo',
      'NY',
      ' Mail to: University Pediatric Dentistry    1100 Main Street    Buffalo, NY  14209 or curbside drop off call 716-861-3510 Monday-Friday 9-4:00',
      'No',
      '42.9037253',
      '-78.8691528'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Pediatric Dentistry (for Emergency Dental Care'
        AND o.latitude = '42.9037253'
        AND o.longitude = '-78.8691528'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Pediatric Dentistry (for Emergency Dental Care'
        AND o.latitude = '42.9037253'
        AND o.longitude = '-78.8691528'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Pediatric Dentistry (for Emergency Dental Care'
        AND o.latitude = '42.9037253'
        AND o.longitude = '-78.8691528'));

COMMIT;
