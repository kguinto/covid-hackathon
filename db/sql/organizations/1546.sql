
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
      'Orange Urgent Care',
      '75 Crystal Run Rd G40
Middletown, NY 10940',
      'Middletown',
      'NY',
      '',
      'Yes',
      '41.4484964',
      '-74.362138'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Urgent Care'
        AND o.latitude = '41.4484964'
        AND o.longitude = '-74.362138'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Urgent Care'
        AND o.latitude = '41.4484964'
        AND o.longitude = '-74.362138'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Urgent Care'
        AND o.latitude = '41.4484964'
        AND o.longitude = '-74.362138'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Urgent Care'
        AND o.latitude = '41.4484964'
        AND o.longitude = '-74.362138'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Urgent Care'
        AND o.latitude = '41.4484964'
        AND o.longitude = '-74.362138'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Orange Urgent Care'
        AND o.latitude = '41.4484964'
        AND o.longitude = '-74.362138'));

COMMIT;
