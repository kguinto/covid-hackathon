
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
      'ConvenientMD Urgent Care',
      '14 Webb Pl
Dover, NH 03820',
      'Dover',
      'NH',
      '',
      'Unsure',
      '43.220959',
      '-70.8871802'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '43.220959'
        AND o.longitude = '-70.8871802'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '43.220959'
        AND o.longitude = '-70.8871802'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '43.220959'
        AND o.longitude = '-70.8871802'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Level 1 masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '43.220959'
        AND o.longitude = '-70.8871802'));

COMMIT;
