
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
      'Excel Urgent Care of Fishkill',
      '1004 Main St
Fishkill, NY 12524',
      'Fishkill',
      'NY',
      '',
      'Yes',
      '41.5321123',
      '-73.9053749'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Fishkill'
        AND o.latitude = '41.5321123'
        AND o.longitude = '-73.9053749'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Fishkill'
        AND o.latitude = '41.5321123'
        AND o.longitude = '-73.9053749'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Fishkill'
        AND o.latitude = '41.5321123'
        AND o.longitude = '-73.9053749'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Fishkill'
        AND o.latitude = '41.5321123'
        AND o.longitude = '-73.9053749'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Fishkill'
        AND o.latitude = '41.5321123'
        AND o.longitude = '-73.9053749'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Fishkill'
        AND o.latitude = '41.5321123'
        AND o.longitude = '-73.9053749'));

COMMIT;
