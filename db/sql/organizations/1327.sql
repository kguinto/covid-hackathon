
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
      'Methodist Le Bonheur Germantown Hospital',
      '7691 Poplar Ave
Germantown, TN 38138',
      'Germantown ',
      'TN',
      '',
      'Yes',
      '35.0901073',
      '-89.8086713'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Le Bonheur Germantown Hospital'
        AND o.latitude = '35.0901073'
        AND o.longitude = '-89.8086713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Le Bonheur Germantown Hospital'
        AND o.latitude = '35.0901073'
        AND o.longitude = '-89.8086713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Le Bonheur Germantown Hospital'
        AND o.latitude = '35.0901073'
        AND o.longitude = '-89.8086713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Le Bonheur Germantown Hospital'
        AND o.latitude = '35.0901073'
        AND o.longitude = '-89.8086713'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist Le Bonheur Germantown Hospital'
        AND o.latitude = '35.0901073'
        AND o.longitude = '-89.8086713'));

COMMIT;
