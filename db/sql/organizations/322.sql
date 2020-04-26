
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
      'Smoketown Family Wellness Center Pediatric office',
      '760 S. Hancock St. Ste B100
Louisville, KY 40203',
      'Louisville',
      'KY',
      'For drop off, call 502-242-7458',
      'Yes',
      '38.2423588',
      '-85.7445792'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Smoketown Family Wellness Center Pediatric office'
        AND o.latitude = '38.2423588'
        AND o.longitude = '-85.7445792'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Smoketown Family Wellness Center Pediatric office'
        AND o.latitude = '38.2423588'
        AND o.longitude = '-85.7445792'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Smoketown Family Wellness Center Pediatric office'
        AND o.latitude = '38.2423588'
        AND o.longitude = '-85.7445792'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Smoketown Family Wellness Center Pediatric office'
        AND o.latitude = '38.2423588'
        AND o.longitude = '-85.7445792'));

COMMIT;
