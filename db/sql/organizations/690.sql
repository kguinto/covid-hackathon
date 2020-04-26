
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
      'San Marino Pediatric Associates',
      '375 Huntington Drive, Suite F
San Marino, CA 91108',
      'San Marino',
      'CA',
      'Can drop off in front of door and ring doorbell.',
      'Yes',
      '34.1069973',
      '-118.1352028'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'San Marino Pediatric Associates'
        AND o.latitude = '34.1069973'
        AND o.longitude = '-118.1352028'));

COMMIT;
