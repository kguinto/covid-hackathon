
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
      'BetterMed Urgent Care',
      '5215 W Broad St
Richmond, VA 23230',
      'Richmond',
      'VA',
      'Any.  Can travel or will pay for shipping',
      'Unsure',
      '37.5854277',
      '-77.4988866'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'BetterMed Urgent Care'
        AND o.latitude = '37.5854277'
        AND o.longitude = '-77.4988866'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'BetterMed Urgent Care'
        AND o.latitude = '37.5854277'
        AND o.longitude = '-77.4988866'));

COMMIT;
