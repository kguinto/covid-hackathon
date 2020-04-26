
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
      'CharDonnay Dialysis ',
      '21006 Las Lomas Blvd
San Antonio, TX 78258',
      'San Antonio ',
      'TX',
      'Administrator''s house. Please drop there. Our nurses work in the prison and will pick up from her so that they can take their PPE into the prison with them. ',
      'Yes',
      '29.6369979',
      '-98.4899703'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'CharDonnay Dialysis '
        AND o.latitude = '29.6369979'
        AND o.longitude = '-98.4899703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'CharDonnay Dialysis '
        AND o.latitude = '29.6369979'
        AND o.longitude = '-98.4899703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'CharDonnay Dialysis '
        AND o.latitude = '29.6369979'
        AND o.longitude = '-98.4899703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'CharDonnay Dialysis '
        AND o.latitude = '29.6369979'
        AND o.longitude = '-98.4899703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'CharDonnay Dialysis '
        AND o.latitude = '29.6369979'
        AND o.longitude = '-98.4899703'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'CharDonnay Dialysis '
        AND o.latitude = '29.6369979'
        AND o.longitude = '-98.4899703'));

COMMIT;
