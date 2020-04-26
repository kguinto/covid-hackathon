
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
      'Los Angeles County USC',
      '1870 Park Newport #316
Newport Beach, CA 92660',
      'Newport Beach',
      'CA',
      '',
      'Yes',
      '33.628572',
      '-117.8806718'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles County USC'
        AND o.latitude = '33.628572'
        AND o.longitude = '-117.8806718'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles County USC'
        AND o.latitude = '33.628572'
        AND o.longitude = '-117.8806718'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles County USC'
        AND o.latitude = '33.628572'
        AND o.longitude = '-117.8806718'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles County USC'
        AND o.latitude = '33.628572'
        AND o.longitude = '-117.8806718'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles County USC'
        AND o.latitude = '33.628572'
        AND o.longitude = '-117.8806718'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Los Angeles County USC'
        AND o.latitude = '33.628572'
        AND o.longitude = '-117.8806718'));

COMMIT;
