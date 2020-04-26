
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
      'ALWAYS THERE HOME CARE',
      '35 Tomlinson Ave
Plainville, CT 06062',
      'Plainville',
      'CT',
      '
35 TOMLINSON AVE PLAINVILLE CT 06062 LEAVE AT FRONT DOOR ',
      'Yes',
      '41.6660962',
      '-72.8617609'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ALWAYS THERE HOME CARE'
        AND o.latitude = '41.6660962'
        AND o.longitude = '-72.8617609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ALWAYS THERE HOME CARE'
        AND o.latitude = '41.6660962'
        AND o.longitude = '-72.8617609'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'ALWAYS THERE HOME CARE'
        AND o.latitude = '41.6660962'
        AND o.longitude = '-72.8617609'));

COMMIT;
