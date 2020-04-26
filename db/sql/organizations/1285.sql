
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
      'Medicaid Personal Providers, LLC',
      '8555 16th St #105
Silver Spring, MD 20910',
      'Silver Spring',
      'MD',
      'Please call 240-355-3101',
      'Yes',
      '38.9961477',
      '-77.0357066'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medicaid Personal Providers, LLC'
        AND o.latitude = '38.9961477'
        AND o.longitude = '-77.0357066'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medicaid Personal Providers, LLC'
        AND o.latitude = '38.9961477'
        AND o.longitude = '-77.0357066'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medicaid Personal Providers, LLC'
        AND o.latitude = '38.9961477'
        AND o.longitude = '-77.0357066'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medicaid Personal Providers, LLC'
        AND o.latitude = '38.9961477'
        AND o.longitude = '-77.0357066'));

COMMIT;
