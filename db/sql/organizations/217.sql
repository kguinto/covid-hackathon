
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
      'Paladina Health',
      '671 McAfee Ct
Erie, CO 80516',
      'Erie',
      'CO',
      'Leave at front door',
      'No',
      '40.0428729',
      '-105.0402851'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Paladina Health'
        AND o.latitude = '40.0428729'
        AND o.longitude = '-105.0402851'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Paladina Health'
        AND o.latitude = '40.0428729'
        AND o.longitude = '-105.0402851'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Paladina Health'
        AND o.latitude = '40.0428729'
        AND o.longitude = '-105.0402851'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Paladina Health'
        AND o.latitude = '40.0428729'
        AND o.longitude = '-105.0402851'));

COMMIT;
