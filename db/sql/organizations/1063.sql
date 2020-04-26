
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
      'Westside Family Health',
      '1802 W 4th St
Wilmington, DE 19805',
      'Wilmington',
      'DE',
      'Please leave at front desk ATTN: RN - Bethany Schiller',
      'Yes',
      '39.7481444',
      '-75.5710177'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westside Family Health'
        AND o.latitude = '39.7481444'
        AND o.longitude = '-75.5710177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westside Family Health'
        AND o.latitude = '39.7481444'
        AND o.longitude = '-75.5710177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westside Family Health'
        AND o.latitude = '39.7481444'
        AND o.longitude = '-75.5710177'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Westside Family Health'
        AND o.latitude = '39.7481444'
        AND o.longitude = '-75.5710177'));

COMMIT;
