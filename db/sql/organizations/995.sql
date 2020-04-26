
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
      'San Luis Valley Health',
      '106 Blanca Ave.
Alamosa CO 81101',
      'Alamosa',
      'CO',
      '',
      'Clean only',
      '37.4724787',
      '-105.882886'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Luis Valley Health'
        AND o.latitude = '37.4724787'
        AND o.longitude = '-105.882886'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Luis Valley Health'
        AND o.latitude = '37.4724787'
        AND o.longitude = '-105.882886'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Luis Valley Health'
        AND o.latitude = '37.4724787'
        AND o.longitude = '-105.882886'));

COMMIT;
