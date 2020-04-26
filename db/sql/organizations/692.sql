
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
      'Tanner Clinic - Kaysville',
      '380 N 400 W
Kaysville, UT 84037',
      'Kaysville',
      'UT',
      'attn: Gina Espinosa',
      'No',
      '41.0404773',
      '-111.9454955'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tanner Clinic - Kaysville'
        AND o.latitude = '41.0404773'
        AND o.longitude = '-111.9454955'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tanner Clinic - Kaysville'
        AND o.latitude = '41.0404773'
        AND o.longitude = '-111.9454955'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tanner Clinic - Kaysville'
        AND o.latitude = '41.0404773'
        AND o.longitude = '-111.9454955'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Tanner Clinic - Kaysville'
        AND o.latitude = '41.0404773'
        AND o.longitude = '-111.9454955'));

COMMIT;
