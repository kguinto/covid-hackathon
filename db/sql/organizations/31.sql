
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
      'Renown Regional',
      '1155 Mill St
Reno, NV 89502',
      'Reno',
      'NV',
      'Drop off to ER, or any check in location ',
      'Yes',
      '39.52552',
      '-119.7952114'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Renown Regional'
        AND o.latitude = '39.52552'
        AND o.longitude = '-119.7952114'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Renown Regional'
        AND o.latitude = '39.52552'
        AND o.longitude = '-119.7952114'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Renown Regional'
        AND o.latitude = '39.52552'
        AND o.longitude = '-119.7952114'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Renown Regional'
        AND o.latitude = '39.52552'
        AND o.longitude = '-119.7952114'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Renown Regional'
        AND o.latitude = '39.52552'
        AND o.longitude = '-119.7952114'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Renown Regional'
        AND o.latitude = '39.52552'
        AND o.longitude = '-119.7952114'));

COMMIT;
