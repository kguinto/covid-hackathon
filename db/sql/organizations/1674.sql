
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
      'University Medical Center - New Orleans',
      '200 S Roman St
New Orleans, LA 70112',
      'New Orleans',
      'LA',
      'Curbside dropoff at S Roman Street entrance of the hospital',
      'Depends on product ',
      '29.9593865',
      '-90.0804657'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center - New Orleans'
        AND o.latitude = '29.9593865'
        AND o.longitude = '-90.0804657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center - New Orleans'
        AND o.latitude = '29.9593865'
        AND o.longitude = '-90.0804657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center - New Orleans'
        AND o.latitude = '29.9593865'
        AND o.longitude = '-90.0804657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center - New Orleans'
        AND o.latitude = '29.9593865'
        AND o.longitude = '-90.0804657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center - New Orleans'
        AND o.latitude = '29.9593865'
        AND o.longitude = '-90.0804657'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Medical Center - New Orleans'
        AND o.latitude = '29.9593865'
        AND o.longitude = '-90.0804657'));

COMMIT;
