
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
      'VitalMed Urgent Care',
      '5711 McPherson Rd, Suite 103
Laredo, TX, 78041',
      'Laredo',
      'TX',
      'Ship to 5711 McPherson rd suite 103 LAREDO Texas 78041.',
      'Unsure',
      '27.5524321',
      '-99.4801395'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'VitalMed Urgent Care'
        AND o.latitude = '27.5524321'
        AND o.longitude = '-99.4801395'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'VitalMed Urgent Care'
        AND o.latitude = '27.5524321'
        AND o.longitude = '-99.4801395'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'VitalMed Urgent Care'
        AND o.latitude = '27.5524321'
        AND o.longitude = '-99.4801395'));

COMMIT;
