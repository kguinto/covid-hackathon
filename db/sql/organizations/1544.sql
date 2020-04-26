
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
      'Excel Urgent Care of Goshen',
      '1 Hatfield Ln #2b
Goshen, NY 10924',
      'Goshen',
      'NY',
      '',
      'Yes',
      '41.3925151',
      '-74.3369073'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Goshen'
        AND o.latitude = '41.3925151'
        AND o.longitude = '-74.3369073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Goshen'
        AND o.latitude = '41.3925151'
        AND o.longitude = '-74.3369073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Goshen'
        AND o.latitude = '41.3925151'
        AND o.longitude = '-74.3369073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Goshen'
        AND o.latitude = '41.3925151'
        AND o.longitude = '-74.3369073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Goshen'
        AND o.latitude = '41.3925151'
        AND o.longitude = '-74.3369073'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Goshen'
        AND o.latitude = '41.3925151'
        AND o.longitude = '-74.3369073'));

COMMIT;
