
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
      'Community Health Alliance',
      '1055 S Wells Ave
Reno, NV 89502',
      'Reno',
      'NV',
      'Attn: Susan Jimenez PA-C or Julie Gwin RN',
      'Yes',
      '39.5156955',
      '-119.8036683'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Alliance'
        AND o.latitude = '39.5156955'
        AND o.longitude = '-119.8036683'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Alliance'
        AND o.latitude = '39.5156955'
        AND o.longitude = '-119.8036683'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Alliance'
        AND o.latitude = '39.5156955'
        AND o.longitude = '-119.8036683'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Alliance'
        AND o.latitude = '39.5156955'
        AND o.longitude = '-119.8036683'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Health Alliance'
        AND o.latitude = '39.5156955'
        AND o.longitude = '-119.8036683'));

COMMIT;
