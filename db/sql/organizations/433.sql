
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
      'Hope Medical Clinic',
      '145 Shake Rag Rd
Clinton, AR 72031',
      'Clinton',
      'AR',
      'Mail',
      'unsure',
      '35.574537',
      '-92.453455'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Medical Clinic'
        AND o.latitude = '35.574537'
        AND o.longitude = '-92.453455'));

COMMIT;
