
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
      'Pediatric Care Associates, Springfield, MA',
      '299 Carew St STE 210
Springfield, MA 01104',
      'Springfield',
      'MA',
      'Please call our office at 413 732 5580 and one of our office staff will meet you outside the physicians office building 299 Carew Street',
      'No',
      '42.1158277',
      '-72.5932991'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Care Associates, Springfield, MA'
        AND o.latitude = '42.1158277'
        AND o.longitude = '-72.5932991'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Care Associates, Springfield, MA'
        AND o.latitude = '42.1158277'
        AND o.longitude = '-72.5932991'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Care Associates, Springfield, MA'
        AND o.latitude = '42.1158277'
        AND o.longitude = '-72.5932991'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Care Associates, Springfield, MA'
        AND o.latitude = '42.1158277'
        AND o.longitude = '-72.5932991'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Care Associates, Springfield, MA'
        AND o.latitude = '42.1158277'
        AND o.longitude = '-72.5932991'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Care Associates, Springfield, MA'
        AND o.latitude = '42.1158277'
        AND o.longitude = '-72.5932991'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Care Associates, Springfield, MA'
        AND o.latitude = '42.1158277'
        AND o.longitude = '-72.5932991'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Care Associates, Springfield, MA'
        AND o.latitude = '42.1158277'
        AND o.longitude = '-72.5932991'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pediatric Care Associates, Springfield, MA'
        AND o.latitude = '42.1158277'
        AND o.longitude = '-72.5932991'));

COMMIT;
