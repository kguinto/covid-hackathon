
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
      'MacNeal Hospital Emergency Department',
      '3249 S Oak Park Ave,
Berwyn, IL 60402',
      'Berwyn',
      'IL',
      'Email me first and then we will determine method',
      'Unsure',
      '41.8321425',
      '-87.7917155'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'MacNeal Hospital Emergency Department'
        AND o.latitude = '41.8321425'
        AND o.longitude = '-87.7917155'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'MacNeal Hospital Emergency Department'
        AND o.latitude = '41.8321425'
        AND o.longitude = '-87.7917155'));

COMMIT;
