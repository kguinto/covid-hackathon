
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
      'Physicians Urgent Care',
      '155 Covey Dr #100
Franklin, TN 37067',
      'Franklin',
      'TN',
      '',
      '',
      '35.914026',
      '-86.8188379'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Physicians Urgent Care'
        AND o.latitude = '35.914026'
        AND o.longitude = '-86.8188379'));

COMMIT;
