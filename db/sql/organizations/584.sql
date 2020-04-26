
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
      'MedStar Franklin Square Medical Center',
      '9000 Franklin Square Dr
Baltimore, MD 21237',
      'Baltimore',
      'MD',
      'Mail or pickup',
      'Unsure',
      '39.3510975',
      '-76.4778621'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'MedStar Franklin Square Medical Center'
        AND o.latitude = '39.3510975'
        AND o.longitude = '-76.4778621'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'MedStar Franklin Square Medical Center'
        AND o.latitude = '39.3510975'
        AND o.longitude = '-76.4778621'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'MedStar Franklin Square Medical Center'
        AND o.latitude = '39.3510975'
        AND o.longitude = '-76.4778621'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'MedStar Franklin Square Medical Center'
        AND o.latitude = '39.3510975'
        AND o.longitude = '-76.4778621'));

COMMIT;
