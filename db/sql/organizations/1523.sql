
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
      'Sabal Palms Health Care Center',
      '499 Alt Keene Rd
Largo, FL 33771',
      'Largo',
      'FL',
      'lease at front door',
      'Yes',
      '27.9215868',
      '-82.7693677'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sabal Palms Health Care Center'
        AND o.latitude = '27.9215868'
        AND o.longitude = '-82.7693677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sabal Palms Health Care Center'
        AND o.latitude = '27.9215868'
        AND o.longitude = '-82.7693677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sabal Palms Health Care Center'
        AND o.latitude = '27.9215868'
        AND o.longitude = '-82.7693677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sabal Palms Health Care Center'
        AND o.latitude = '27.9215868'
        AND o.longitude = '-82.7693677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sabal Palms Health Care Center'
        AND o.latitude = '27.9215868'
        AND o.longitude = '-82.7693677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sabal Palms Health Care Center'
        AND o.latitude = '27.9215868'
        AND o.longitude = '-82.7693677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sabal Palms Health Care Center'
        AND o.latitude = '27.9215868'
        AND o.longitude = '-82.7693677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sabal Palms Health Care Center'
        AND o.latitude = '27.9215868'
        AND o.longitude = '-82.7693677'));

COMMIT;