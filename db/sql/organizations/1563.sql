
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
      'Excel Urgent Care of Nesconset',
      '465 Smithtown Blvd
Nesconset, NY 11767',
      'Nesconset',
      'NY',
      '',
      'Yes',
      '40.8333919',
      '-73.1467158'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Nesconset'
        AND o.latitude = '40.8333919'
        AND o.longitude = '-73.1467158'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Nesconset'
        AND o.latitude = '40.8333919'
        AND o.longitude = '-73.1467158'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Nesconset'
        AND o.latitude = '40.8333919'
        AND o.longitude = '-73.1467158'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Nesconset'
        AND o.latitude = '40.8333919'
        AND o.longitude = '-73.1467158'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Nesconset'
        AND o.latitude = '40.8333919'
        AND o.longitude = '-73.1467158'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Excel Urgent Care of Nesconset'
        AND o.latitude = '40.8333919'
        AND o.longitude = '-73.1467158'));

COMMIT;
