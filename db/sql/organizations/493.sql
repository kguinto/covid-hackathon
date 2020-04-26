
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
      'Broken To Better Urgent Care',
      '735 Cherry Rd #3121
Rock Hill, SC 29732',
      'Rock Hill',
      'SC',
      'Mail or drive and pick up.',
      'Unsure',
      '34.94503',
      '-81.0271354'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Broken To Better Urgent Care'
        AND o.latitude = '34.94503'
        AND o.longitude = '-81.0271354'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Broken To Better Urgent Care'
        AND o.latitude = '34.94503'
        AND o.longitude = '-81.0271354'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Broken To Better Urgent Care'
        AND o.latitude = '34.94503'
        AND o.longitude = '-81.0271354'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Broken To Better Urgent Care'
        AND o.latitude = '34.94503'
        AND o.longitude = '-81.0271354'));

COMMIT;
