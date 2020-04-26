
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
      'Pediatric Services ',
      '4700 Park Glen Rd
St Louis Park, MN 55416',
      'St. Louis Park',
      'MN',
      'Curbside drop off or mail is acceptable ATTN Dr. Kathryn Harrington',
      'Yes',
      '44.942681',
      '-93.3406232'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Services '
        AND o.latitude = '44.942681'
        AND o.longitude = '-93.3406232'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('We need SIZE SMALL N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Services '
        AND o.latitude = '44.942681'
        AND o.longitude = '-93.3406232'));

COMMIT;
