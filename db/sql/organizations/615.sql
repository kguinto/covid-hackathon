
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
      'Chestnut Hill Lodge Nursing Home',
      '8833 Stenton Ave
Glenside, PA 19038',
      'Glenside',
      'PA',
      'Mail/Drop-off',
      'Unsure',
      '40.0847247',
      '-75.2077483'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chestnut Hill Lodge Nursing Home'
        AND o.latitude = '40.0847247'
        AND o.longitude = '-75.2077483'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chestnut Hill Lodge Nursing Home'
        AND o.latitude = '40.0847247'
        AND o.longitude = '-75.2077483'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Chestnut Hill Lodge Nursing Home'
        AND o.latitude = '40.0847247'
        AND o.longitude = '-75.2077483'));

COMMIT;
