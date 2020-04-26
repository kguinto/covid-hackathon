
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
      'Prairieville Family Hospital',
      '37358 Market Place Drive
Prairieville, LA 70769',
      'Prairieville',
      'LA',
      'drop off',
      '',
      '30.3177735',
      '-90.978589'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Prairieville Family Hospital'
        AND o.latitude = '30.3177735'
        AND o.longitude = '-90.978589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Prairieville Family Hospital'
        AND o.latitude = '30.3177735'
        AND o.longitude = '-90.978589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Prairieville Family Hospital'
        AND o.latitude = '30.3177735'
        AND o.longitude = '-90.978589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Prairieville Family Hospital'
        AND o.latitude = '30.3177735'
        AND o.longitude = '-90.978589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Prairieville Family Hospital'
        AND o.latitude = '30.3177735'
        AND o.longitude = '-90.978589'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Prairieville Family Hospital'
        AND o.latitude = '30.3177735'
        AND o.longitude = '-90.978589'));

COMMIT;
