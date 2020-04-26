
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
      'Ormond Beach Urgent Care',
      '126 S Nova Rd
Ormond Beach, FL 32174',
      'Ormond Beach',
      'FL',
      '',
      'Unsure',
      '29.2768261',
      '-81.0831481'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ormond Beach Urgent Care'
        AND o.latitude = '29.2768261'
        AND o.longitude = '-81.0831481'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ormond Beach Urgent Care'
        AND o.latitude = '29.2768261'
        AND o.longitude = '-81.0831481'));

COMMIT;
