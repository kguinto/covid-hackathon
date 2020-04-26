
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
      'Vanderbilt University Medical Center',
      '1211 Medical Center Drive
Nashville, TN 37232',
      'Nashville',
      'TN',
      '',
      'Unsure',
      '36.1424246',
      '-86.8004397'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vanderbilt University Medical Center'
        AND o.latitude = '36.1424246'
        AND o.longitude = '-86.8004397'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vanderbilt University Medical Center'
        AND o.latitude = '36.1424246'
        AND o.longitude = '-86.8004397'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vanderbilt University Medical Center'
        AND o.latitude = '36.1424246'
        AND o.longitude = '-86.8004397'));

COMMIT;
