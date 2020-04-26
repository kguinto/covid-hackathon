
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
      'WesTex Urgent Care',
      '3401 Greenbriar Dr., Suite 200
Midland, TX 79707',
      'Midland',
      'TX',
      'Unknown',
      'unsure',
      '32.0179927',
      '-102.1384834'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'WesTex Urgent Care'
        AND o.latitude = '32.0179927'
        AND o.longitude = '-102.1384834'));

COMMIT;
