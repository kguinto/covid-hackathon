
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
      '599 Lafayette Rd
Portsmouth, NH 03801',
      'Portsmouth',
      'NH',
      '',
      'Unsure',
      '43.0555116',
      '-70.7689857'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '43.0555116'
        AND o.longitude = '-70.7689857'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '43.0555116'
        AND o.longitude = '-70.7689857'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'ConvenientMD Urgent Care'
        AND o.latitude = '43.0555116'
        AND o.longitude = '-70.7689857'));

COMMIT;
