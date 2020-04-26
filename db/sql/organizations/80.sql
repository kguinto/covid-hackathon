
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
      'Kaiser Permanente - San Leandro',
      '2500 Merced St
San Leandro, CA 94577',
      'San Leandro',
      'CA',
      'Accepting donations at the front of the hospital M-F from 9 am - 3 pm',
      '',
      '37.7064867',
      '-122.1647052'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - San Leandro'
        AND o.latitude = '37.7064867'
        AND o.longitude = '-122.1647052'));

COMMIT;
