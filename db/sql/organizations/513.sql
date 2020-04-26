
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
      'Kaiser Permanente - Manhattan Beach',
      '400 S Sepulveda Blvd
Manhattan Beach, CA 90266',
      'Manhattan Beach',
      'CA',
      'Drop off, mail, I can pick up anywhere in Los Angeles',
      'Unsure',
      '33.8759718',
      '-118.3956055'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Manhattan Beach'
        AND o.latitude = '33.8759718'
        AND o.longitude = '-118.3956055'));

COMMIT;
